import numpy as np
from landing_minimize_cost_2_rw import optimizer_mult
from noise_level import weight_indexes
#from read_files import read_file
from random import random,randint

def objective(data,S):
    rwy_penalty = [10,2]
    runways = len(rwy_penalty)
    z = 0
    
    #delay/early time per a/c
    for i in range(planes):
        z += g[i]*alpha[i]+h[i]*beta[i]
        for k in range(runways):
            z += landing_cost[k]*rw[i, k]
    
    # noise level per runway
    for l in range(runways):
        SEL = weight_indexes(S)      # list of SEL in dBA per a/c per rwy
        LD += (-49.4 + 10 * np.log(np.sum(np.power(10, SEL·/10)))) * rwy_penalty[l]
    Z = 10 * z + 2* LD
    return Z



# choose the airdata file to use
##N = 1

##S = read_file(N)


# get an initial solution
model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, z = optimizer_mult()


planes = len(S)
rwy_forced = np.zeros(planes)
T = 1000    # "temperature"
Z = []      # empty list to log solutions

while True:
    # swap runway for a random plane
    idx = randint(0, planes - 1)    #index of the plane to swap
    
    # get a solution from the linear solver -> add constraint for swapped plane
    model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, z = optimizer_mult()
    
    
    # measure noise performance for this solution, compare to previous performance
    z = objective(data,S)         # the current solution (noise + delay performance)
    Z_current = Z[-1]           # the final item in the list is the current solution
    diff = z - Z_current
    
    # choose whether to accept the previous runway swap
    prob = np.exp(diff / T)
    if diff <0 or random()<prob:
        T /= 2                  # halve T if solution is accepted
        Z.append(z)             # add trial solution to list


    # exit condition (too many rejected changes in a row, T too low)
    if T < 1:
        break

# print results
