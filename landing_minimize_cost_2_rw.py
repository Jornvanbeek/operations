#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov 16 14:41:42 2022

@author: jaremhinsenveld
"""
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from gurobipy import Model, GRB, LinExpr, quicksum
from datetime import datetime
from read_files import read_file

start_time = datetime.now()

"""Initiate model"""

file = 2
data, S = read_file(file)

model = Model()


# %%
"""Model parameters/data"""
planes = len(data)


g = data[:, 4]  # penalty cost (≥0) per unit of time for landing before the target time
h = data[:, 5]  # penalty cost (≥0) per unit of time for landing after the target time
s = []
for i in range(planes):
    temp = []
    for j in range(planes):
        if i != j:
            temp.append(0)  # separation time, aanpassen!
        else:
            temp.append(0)
    s.append(temp)
s = np.array(s)
landing_cost = [50, 100]

runways = len(landing_cost)

model.update()


# %%
"""Variables"""

E = data[:, 1]
T = data[:, 2]
L = data[:, 3]


alpha = {}
beta = {}
delta = {}
rw = {}  # allocated runway
z = {}  # same runway as other or not


x = {}

for i in range(planes):
    alpha[i] = model.addVar(lb=0, ub=T[i] - E[i], vtype=GRB.INTEGER, name="alpha_[%s]" % (i))  # T[i] - E[i] = eq 15
    beta[i] = model.addVar(lb=0, ub=L[i] - T[i], vtype=GRB.INTEGER, name="beta_[%s]" %
                           (i))  # eq 17 DONT FORGET TO CHANGE 0 TO i !!!
    x[i] = model.addVar(lb=E[i], ub=L[i], vtype=GRB.INTEGER, name="x_[%s]" %
                        (i))  # eq 1 DONT FORGET TO CHANGE 0 TO i !!!
    for k in range(runways):
        rw[i, k] = model.addVar(lb=0, ub=1, vtype=GRB.INTEGER, name="runway_[%s]")

    for j in range(planes):
        delta[i, j] = model.addVar(lb=0, ub=1, vtype=GRB.BINARY, name="delta_[%s,%s]" % (i, j))
        z[i, j] = model.addVar(lb=0, ub=1, vtype=GRB.BINARY, name="z_[%s,%s]" %
                               (i, j))  # do 2 aircraft land on the same runway


model.update()


# %%
"""Constraints"""

for i in range(planes):
    # for k in range(runways):
    """Runways toevoegen"""

    # an aircraft lands at 1 runway max.
    thisLHS = LinExpr()
    thisLHS += rw[i, 0]+rw[i, 1]  # rw[i,2]+rw[i,3]rw[i,4]+rw[i,5]
    model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=1, name="runway_[%s]" % (i))

    # constraint 14 (define alpha as the early time)
    thisLHS = LinExpr()
    thisLHS += alpha[i]
    model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs=T[i] - x[i], name="Alpha[%s]" % (i))

    # constraint 16 (define beta as the delay)
    thisLHS = LinExpr()
    thisLHS += beta[i]
    model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs=x[i] - T[i], name="Beta[%s]" % (i))

    # constraint 18 (define that the delay and early time combined with target is xi) (alpha and beta are minimized by cost function)
    thisLHS = LinExpr()
    thisLHS += x[i]
    model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=T[i] - alpha[i] + beta[i], name="x[%s]" % (i))

    for j in range(planes):  # maybe remove the i part? though this should be fewer constraints overall
        if j != i:

            # constraint 2 (i or j always lands before the other)
            thisLHS = LinExpr()
            thisLHS += delta[i, j] + delta[j, i]
            print(thisLHS)
            model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=1, name='delta[%s,%s]' % (i, j))

            # Symmetry: if 1 lands on the same runway as 2, 2 also lands at the same runway as 1
            thisLHS = LinExpr()
            thisLHS += z[i, j]
            thisRHS = LinExpr()
            thisRHS += z[j, i]
            model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=thisRHS, name="z_[%s]" % (i))

            thisLHS = LinExpr()
            thisLHS += z[i, j]
            thisRHS = LinExpr()
            print(rw[i, k])
            thisRHS += rw[i, k]+rw[j, k]-1
            model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs=thisRHS, name="z_[%s]" % (i))

            if L[i] < E[j] and L[i] + S[i, j] <= E[j]:  # set W
                # constraint 6 (i before j is 1, as latest i is before earliest j)
                thisLHS = LinExpr()
                thisLHS += delta[i, j]
                model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=1, name='delta_set_W[%s,%s]' % (i, j))

            elif L[i] < E[j] and L[i] + S[i, j] > E[j]:  # set V
                # constraint 6 (i before j is 1, as latest i is before earliest j)
                thisLHS = LinExpr()
                thisLHS += delta[i, j]
                model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=1, name='delta_set_V[%s,%s]' % (i, j))

                # constraint 7 (xj is after xi plus separation)
                thisLHS = LinExpr()
                thisLHS += x[j]
                thisRHS = LinExpr()
                thisRHS += x[i] + S[i, j]*z[i, j]+s[i, j]*(1-z[i, j])
                model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs=thisRHS, name='x_set_V[%s]' % (j))

            else:  # set U
                # constraint 11 (either xj lands after xi with separation, or xj is after or equal to earliest j)
                thisLHS = LinExpr()
                thisLHS += x[j]
                thisRHS = LinExpr()
                thisRHS += x[i] + S[i, j] - (L[i] + S[i, j] - E[j]) * delta[j, i]  # CHECK IF THESE INDICES ARE CORRECT
                thisRHS += x[i] + S[i, j]*z[i, j] + s[i][j] * \
                    (1-z[i, j]) - (L[i] + max(S[i, j], s[i, j]) - E[j])*delta[j, i]
                model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs=thisRHS, name='x_set_U[%s]' % (j))

    # elif j == i:
    # make sure that delta ii gets skipped!
    # i think this should be automatically satisfied als no constraint is added??


model.update()


# %%
"""Objective function"""

obj = LinExpr()  # Objective function (aanpassen)
for i in range(planes):
    obj += g[i]*alpha[i]+h[i]*beta[i]

model.setObjective(obj, GRB.MINIMIZE)
# Updating the model
model.update()


# %%
"""Modelling stuff"""


# Writing the .lp file. Important for debugging
model.write('model_formulation.lp')


model.optimize()


# Saving our solution in the form [name of variable, value of variable]
solution = []
for v in model.getVars():
    solution.append([v.varName, v.x])

print(solution)


calc_time = datetime.now()-start_time
print(calc_time)
