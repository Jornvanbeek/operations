import numpy as np
from landing_minimize_cost_2_rw import optimizer_mult
from noise_level import weight_indexes
#from read_files import read_file
from random import random,randint

# %%

def objective(data,S,alpha,beta):
    g = data[:,4]                   # penalty cost (≥0) per unit of time for landing before the target time
    h = data[:,5]                   # penalty cost (≥0) per unit of time for landing after the target time
    rwy_penalty = [10,2]            # weight of the noise impact per runway
    runways = len(rwy_penalty)
    z = 0                           # initialize the delay objective function
    
    # delay/early time per a/c
    for i in range(planes):
        z += g[i]*alpha[i]+h[i]*beta[i]
        for k in range(runways):
            z += landing_cost[k]*rw[i, k]
    
    LD = 0
    # noise level per runway
    for l in range(runways):
        SEL = weight_indexes(S)      # list of SEL in dBA per a/c
        # TODO split this per runway
        
        LD += (-49.4 + 10 * np.log(np.sum(np.power(10, SEL·/10)))) * rwy_penalty[l]
    
    # combine the objective functions for delay and noise
    obj = 10 * z + 2* LD
    return obj

# %%

# choose the airdata file to use
##N = 1

##S = read_file(N)[1]


# get an initial solution
model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, z = optimizer_mult()


planes = len(S)
rwy_forced = np.zeros(planes)
T = 1000    # "temperature"
Z = []      # empty list to log solutions
reject = 0  # count the number of rejects in a row

# %%

while True:
    # swap runway for a random plane
    idx = randint(0, planes - 1)    #index of the plane to swap
    rwy_forced[idx] = 1
    
    # get a solution from the linear solver -> add constraint for swapped plane
    model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, z = optimizer_mult()
    
    
    # measure noise performance for this solution, compare to previous performance
    z = objective(data,S,alpha,beta)           # the current solution (noise + delay performance)
    Z_current = Z[-1]               # the final item in the list is the current solution
    diff = z - Z_current
    
    # choose whether to accept the previous runway swap
    prob = np.exp(diff / T)
    if diff <0 or random()<prob:
        T /= 2                  # halve T if solution is accepted
        Z.append(z)             # add trial solution to list
        reject = 0              # reset reject counter
    else:
        reject += 1

    # exit condition (too many rejected changes in a row)
    if reject == 8:
        break

# print results
