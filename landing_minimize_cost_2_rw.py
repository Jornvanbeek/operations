import numpy as np
from gurobipy import Model, GRB, LinExpr, quicksum
from datetime import datetime
from read_files import read_file
from noise_level import weight_indexes


def optimizer_mult(file, landing_cost):
    start_time = datetime.now()

    """Initiate model"""

    data, S = read_file(file)

    # sort by target landing time
    S = S[data[:, 2].argsort()]
    S = np.transpose(np.transpose(S)[data[:, 2].argsort()])

    data = data[data[:, 2].argsort()]

    model = Model()

    # %%
    """Model parameters/data"""
    planes = len(data)

    g = data[:, 4]  # penalty cost (≥0) per unit of time for landing before the target time
    h = data[:, 5]  # penalty cost (≥0) per unit of time for landing after the target time
    noise_cost = weight_indexes(S)

    #g = np.zeros(planes)
    #h = np.zeros(planes)

    s = np.zeros((planes, planes))

    # landing_cost = [2, 1]

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
            rw[i, k] = model.addVar(lb=0, ub=1, vtype=GRB.BINARY, name="runway_[%s,%s]" % (i, k))

        for j in range(planes):
            delta[i, j] = model.addVar(lb=0, ub=1, vtype=GRB.BINARY, name="delta_[%s,%s]" % (i, j))
            z[i, j] = model.addVar(lb=0, ub=1, vtype=GRB.BINARY, name="z_[%s,%s]" %
                                   (i, j))  # do 2 aircraft land on the same runway
    # print(rw)

    model.update()

    # %%
    """Constraints"""

    for i in range(planes):

        """Runways toevoegen"""

        # equation 28 an aircraft lands at 1 runway max.
        thisLHS = LinExpr()
        thisLHS += quicksum(rw[i, k] for k in range(runways))
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
                # print(thisLHS)
                model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=1, name='delta[%s,%s]' % (i, j))

                # Symmetry: if 1 lands on the same runway as 2, 2 also lands at the same runway as 1
                thisLHS = LinExpr()
                thisLHS += z[i, j]
                thisRHS = LinExpr()
                thisRHS += z[j, i]
                model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=thisRHS, name="z_[%s,%s]" % (i, j))

                for k in range(runways):
                    thisLHS = LinExpr()
                    thisLHS += z[i, j]
                    thisRHS = LinExpr()
                    # print(rw[i, k])
                    thisRHS += rw[i, k]+rw[j, k]-1
                    model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL, rhs=thisRHS, name="z_[%s,%s,%s]" % (i, j, k))

                if L[i] < E[j] and L[i] + S[i, j] <= E[j]:  # set W
                    # constraint 6 (i before j is 1, as latest i is before earliest j)
                    thisLHS = LinExpr()
                    thisLHS += delta[i, j]
                    model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=1, name='delta_set_W[%s,%s,%s]' % (i, j, k))

                elif L[i] < E[j] and L[i] + S[i, j] > E[j]:  # set V
                    # constraint 6 (i before j is 1, as latest i is before earliest j)
                    thisLHS = LinExpr()
                    thisLHS += delta[i, j]
                    model.addConstr(lhs=thisLHS, sense=GRB.EQUAL, rhs=1, name='delta_set_V[%s,%s,%s]' % (i, j, k))

                    # constraint 7 (xj is after xi plus separation)
                    thisLHS = LinExpr()
                    thisLHS += x[j]
                    thisRHS = LinExpr()
                    thisRHS += x[i] + S[i, j]*z[i, j]+s[i, j]*(1-z[i, j])
                    model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL,
                                    rhs=thisRHS, name='x_set_V[%s,%s,%s]' % (i, j, k))

                else:  # set U
                    # constraint 11 (either xj lands after xi with separation, or xj is after or equal to earliest j)
                    thisLHS = LinExpr()
                    thisLHS += x[j]
                    thisRHS = LinExpr()
                    thisRHS += x[i] + S[i, j]*z[i, j] + s[i][j] * \
                        (1-z[i, j]) - (L[i] + max(S[i, j], s[i, j]) - E[j])*delta[j, i]
                    model.addConstr(lhs=thisLHS, sense=GRB.GREATER_EQUAL,
                                    rhs=thisRHS, name='x_set_U[%s,%s,%s]' % (i, j, k))

    # elif j == i:
    # make sure that delta ii gets skipped!
    # i think this should be automatically satisfied als no constraint is added??

    model.update()

    # %%
    """Objective function"""

    obj = LinExpr()  # Objective function 
    for i in range(planes):
        obj += g[i]*alpha[i]+h[i]*beta[i]
        for k in range(runways):
            obj += landing_cost[k]*rw[i, k]*noise_cost[i]

    model.setObjective(obj, GRB.MINIMIZE)
    # Updating the model
    model.update()

    # %%
    """Modelling stuff"""

    # Writing the .lp file. 
    model.write('model_formulation.lp')

    model.optimize()

    calc_time = datetime.now()-start_time
    print(calc_time)

    return model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, runways, z


if __name__ == "__main__":

    K = .24
    landing_cost = [K * 1, K * 2]
    file = 10

    model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, runways, z = optimizer_mult(file, landing_cost)
    # model2, data2, S2, x2, alpha2, beta2, delta2, E2, T2, L2, planes2, calc_time2 = optimizer(file = 2)

    noise_cost = weight_indexes(S)
    solution = {'alpha': np.zeros(planes), "beta": np.zeros(planes), "x": np.zeros(planes),
                "delta": np.zeros((planes, planes)), "runway": np.zeros((planes, runways))}
    # Saving our solution in the form [name of variable, value of variable]
    sol = []
    for v in model.getVars():
        sol.append([v.varName, v.x])

    for i in range(planes):
        solution['alpha'][i] = alpha[i].x
        solution['beta'][i] = beta[i].x
        solution['x'][i] = x[i].x
        for j in range(planes):
            solution['delta'][i, j] = delta[(i, j)].x
        for k in range(runways):
            solution['runway'][i, k] = rw[(i, k)].x

    final_delay_cost = 0
    for i in range(planes):
        final_delay_cost += data[i,4] * solution['alpha'][i]+ data[i,5] * solution['beta'][i]
    final_noise_cost = 0
    for i in range(runways):
        final_noise_cost += np.sum(landing_cost[i] * solution['runway'][:,i] * noise_cost)


    print('delay cost =',final_delay_cost)
    print('noise cost =',final_noise_cost)