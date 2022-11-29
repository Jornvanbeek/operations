import numpy as np
from landing_minimize_cost_2_rw import optimizer_mult

while True:
    # get a solution from the linear solver
    model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, z = optimizer_mult()

    # measure noise performance for this solution, compare to previous performance
    # choose whether to accept the previous runway swap

    # swap runway for a random plane

    # exit condition (too many rejected changes in a row
    if D < 1:
        break

# print results
