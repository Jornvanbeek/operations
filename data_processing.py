# -*- coding: utf-8 -*-
"""
Created on Wed Nov 23 15:08:09 2022

@author: jornv
"""
from landing_minimize_cost import optimizer
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

#change this to optimize other files
file =2


model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time = optimizer(file)

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
spacing = np.zeros((planes, planes))
for i in range(planes):
    for j in range(planes):
        spacing[i][j] = solution['x'][i] - solution['x'][j]


"""plotting """
plane_list = np.arange(1,planes+1)
plt.close('all')

ind = []
actual_separation = np.zeros(planes)
for i in range(planes):
    try: 
        j = np.where(spacing[i] == max(spacing[i][spacing[i] < 0]))[0][0]
    except:
        j = np.where(spacing[i] == min(spacing[i][spacing[i] > 0]))[0][0]
    ind.append([i,j])
    actual_separation[i] = S[i,j]



# plt.figure()

# plt.plot(E, plane_list, color='red', marker='o', linestyle='None')#, linewidth=2, markersize=12)
# plt.plot(T, plane_list, color='yellow', marker='o', linestyle='None')
# plt.plot(L, plane_list, color='blue', marker='o', linestyle='None')
# plt.plot(solution['x'], plane_list, color='green', marker='+', linestyle='None', markersize=12)
# plt.plot(solution['x'] + actual_separation, plane_list, color='blue', marker='+', linestyle='None', markersize=12)
# plt.show()

def gantt(sort = False):
    fig, ax = plt.subplots()
    plt.plot(E, plane_list, color='green', marker='.', linestyle='None')
    ax.plot(T, plane_list, color='yellow', marker='.', linestyle='None')
    ax.plot(L, plane_list, color='red', marker='.', linestyle='None')
    if sort == False:
        plt.title("file: "+ str(file)+ ", gantt chart, non sorted, cost = "+ str(model.objVal))
        for plane in range(planes):
            ax.add_patch(Rectangle((solution['x'][plane], plane+0.5), actual_separation[plane], 1))
    elif sort == True:
        plt.title("file: "+ str(file)+ ", gantt chart, sorted, cost = " + str(model.objVal))
        sort_separation = actual_separation[solution['x'].argsort()]
        sort_solution = solution['x'][solution['x'].argsort()]
        for plane in range(planes):
            ax.add_patch(Rectangle((sort_solution[plane], plane+0.5), sort_separation[plane], 1))
    
    plt.yticks(plane_list)
    plt.ylabel('Plane')
    plt.xlabel('Time [s]')
    plt.grid()

    plt.show()

gantt()
gantt(sort = True)

# fig, ax = plt.subplots()
# ax.plot([0],[0],color="cyan")

# actual_separation = actual_separation[solution['x'].argsort()]
# solution['x'] = solution['x'][solution['x'].argsort()]
# for plane in range(planes):
#     x = [solution['x'][plane]]
#     ax.add_patch(Rectangle((solution['x'][plane], plane+0.5), actual_separation[plane], 1))
# plt.plot(T, plane_list, color='yellow', marker='.', linestyle='None')
# plt.yticks(plane_list)

# plt.grid()
# plt.show()
