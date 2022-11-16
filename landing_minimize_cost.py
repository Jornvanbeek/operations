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

alpha = {}


beta = {}

model.update()


# %%
"""Constraints"""


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
