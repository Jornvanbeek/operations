# -*- coding: utf-8 -*-
"""
Created on Wed Nov 23 15:08:09 2022

@author: jornv
"""
from landing_minimize_cost import optimizer
import numpy as np
import matplotlib.pyplot as plt

model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time = optimizer()

solution = {'alpha': np.zeros(planes), "beta": np.zeros(planes), "x": np.zeros(planes), "delta": np.zeros((planes,planes))}
# Saving our solution in the form [name of variable, value of variable]
sol = []
for v in model.getVars():
    sol.append([v.varName, v.x])
    
    
for i in range(planes):
    solution['alpha'][i] = alpha[i].x
    solution['beta'][i] = beta[i].x
    solution['x'][i] = x[i].x
    for j in range(planes):
        solution['delta'][i,j] = delta[(i,j)].x

# print(solution)

""""generate array with time spacings"""
x_land_t = np.zeros(planes)
for i in range(planes):
    x_land_t[i] = sol[2 + (planes + 3) * i][1]
spacing = np.zeros((planes, planes))
for i in range(planes):
    for j in range(planes):
        spacing[i][j] = x_land_t[i] - x_land_t[j]


"""plotting """
plane_list = []
for i in range(1,planes+1):
    plane_list.append(i)

plt.figure()

plt.plot(E, plane_list, color='red', marker='o', linestyle='None')#, linewidth=2, markersize=12)
plt.plot(T, plane_list, color='yellow', marker='o', linestyle='None')
plt.plot(L, plane_list, color='blue', marker='o', linestyle='None')
plt.plot(solution['x'], plane_list, color='green', marker='+', linestyle='None', markersize=12)
plt.show()


