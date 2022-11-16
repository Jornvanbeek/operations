#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov 16 14:41:42 2022

@author: jaremhinsenveld
"""
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from gurobipy import Model, GRB, LinExpr
from datetime import datetime

start_time = datetime.now()

"""Initiate model"""

model = Model()


# %%
"""Model parameters/data"""
planes = 5

g = 5  # penalty cost (≥0) per unit of time for landing before the target time
h = 5  # penalty cost (≥0) per unit of time for landing after the target time

model.update()


# %%
"""Variables"""
T= [1]
E = [0]
L = [2]
S = [1,2]
    
alpha = {}
beta = {}
delta = {} 

x = {}

for i in range(planes):
    alpha[i]=model.addVar(lb=0, ub=T[i] - E[i], vtype=GRB.INTEGER,name="Alpha_max[%s]"%(i)) #T[i] - E[i] = eq 15
    beta[i]=model.addVar(lb=0, ub=L[i] - T[i], vtype=GRB.INTEGER,name="Beta_max[%s]"%(i)) #eq 17 DONT FORGET TO CHANGE 0 TO i !!!
    x[i]=model.addVar(lb= E[i], ub=L[i], vtype=GRB.INTEGER,name="x_bounds[%s]"%(i)) #eq 1 DONT FORGET TO CHANGE 0 TO i !!!
    for j in range(planes):
        delta[i,j]=model.addVar(lb=0, ub=1, vtype=GRB.BINARY,name="delta_bounds[%s,%s]"%(i,j))


model.update()


# %%
"""Constraints"""

for i in range(planes):
    
    # constraint 14 (define alpha as the early time)
    thisLHS = LinExpr()
    thisLHS += alpha[i]
    model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs=T[i] - x[i], name="Alpha[%s]"%(i))
    
    #constraint 16 (define beta as the delay)
    thisLHS = LinExpr()
    thisLHS += beta[i]
    model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs= x[i] - T[i], name="Beta[%s]"%(i))
    
    #constraint 18 (define that the delay and early time combined with target is xi) (alpha and beta are minimized by cost function)
    thisLHS = LinExpr()
    thisLHS += x[i]
    model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs= T[i] - alpha[i] + beta[i], name="x[%s]"%(i))
    
    for j in range(i,planes): # maybe remove the i part? though this should be fewer constraints overall
        if j != i:
            
            #constraint 2 (i or j always lands before the other)
            thisLHS = LinExpr()
            thisLHS += delta[i,j] + delta[j,i] 
            model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs= 1, name='delta[%s,%s]'%(i,j))
            
           
            
            if L[i]  < E[j] and L[i] + S[i,j] <= E[j]:      #set W
                #constraint 6 (i before j is 1, as latest i is before earliest j)
                thisLHS = LinExpr()
                thisLHS += delta[i,j]
                model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs= 1, name='delta_set_W[%s,%s]'%(i,j))
                
            elif L[i]  < E[j] and L[i] + S[i,j] > E[j]:        #set V
                #constraint 6 (i before j is 1, as latest i is before earliest j)
                thisLHS = LinExpr()
                thisLHS += delta[i,j]
                model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs= 1, name='delta_set_V[%s,%s]'%(i,j))
                
                #constraint 7 (xj is after xi plus separation)
                thisLHS = LinExpr()
                thisLHS += x[j]
                model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs= x[i] + S[i,j], name='x_set_V[%s]'%(j))
           
            else:                                               #set U
                #constraint 11 (either xj lands after xi with separation, or xj is after or equal to earliest j)
                thisLHS = LinExpr()
                thisLHS += x[j]
                thisRHS = LinExpr()
                thisRHS += x[i] + S[i,j] - (L[i] + S[i,j] - E[j])*delta[j,i]            #CHECK IF THESE INDICES ARE CORRECT
                model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs= thisRHS, name='x_set_U[%s]'%(j))
                
        
            
        #elif j == i:
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
