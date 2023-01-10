# -*- coding: utf-8 -*-
"""
Created on Wed Nov 23 15:08:09 2022

@author: jornv
"""
from landing_minimize_cost import optimizer
from landing_minimize_cost_2_rw import optimizer_mult
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle
import math
from noise_level import weight_indexes

#change this to optimize other files
file = 2
K = .3
landing_cost = [K * 1, K * 2]
files = np.arange(1,7)

def batch():
    batch_vals = [[],[],[],[]]
    costs = [0,0,0,0,0]
    for file in files:
        for rw in range(2,len(costs)):
            print("---------------------------------- file ", file, "---------------------")
            # if file == 9 or file == 11:
            #     costs.append(0)
            model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, runways, z = optimizer_mult(file, costs[:rw+1])
            batch_vals[0].append(model.objVal)
            batch_vals[1].append(calc_time)
            batch_vals[2].append(runways)
            batch_vals[3].append(file)
        
    
    return batch_vals

# model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time = optimizer(file)
model, data, S, x, alpha, beta, delta, E, T, L, planes, calc_time, rw, runways, z = optimizer_mult(file, landing_cost)
noise_levels = weight_indexes(S)
solution = {'alpha': np.zeros(planes), "beta": np.zeros(planes), "x": np.zeros(planes), "delta": np.zeros((planes,planes)), "runway": np.zeros((planes,runways))}
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
    for k in range(runways):
        solution['runway'][i,k] = rw[(i,k)].x

# print(solution)

final_delay_cost = 0.
for i in range(planes):
    final_delay_cost += data[i,4] * solution['alpha'][i]+ data[i,5] * solution['beta'][i]
final_noise_cost = 0.
for i in range(runways):
    final_noise_cost += np.sum(landing_cost[i] * solution['runway'][:,i] * noise_levels)


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
rwy_separation = np.zeros((runways,planes))
for i in range(planes):
    try: 
        j = np.where(spacing[i] == max(spacing[i][spacing[i] < 0]))[0][0]
    except:
        
        j = np.where(spacing[i] == min(spacing[i][spacing[i] > 0]))[0][0]
    ind.append([i,j])
    actual_separation[i] = S[i,j]
    
for rw in range(runways):
    for i in range(planes):
        try:
            j = np.where(spacing[i] == max(spacing[i][solution['runway'][:,rw]*spacing[i] < 0]))[0][0]
        except:
            j = np.where(spacing[i] == min(spacing[i][solution['runway'][:,rw]*spacing[i] > 0]))[0][0]
        try:
            if spacing[i][i+1] == 0:
                j = i + 1
        except:
            j = j
                
        rwy_separation[rw,i] = S[i,j]



# plt.figure()

# plt.plot(E, plane_list, color='red', marker='o', linestyle='None')#, linewidth=2, markersize=12)
# plt.plot(T, plane_list, color='yellow', marker='o', linestyle='None')
# plt.plot(L, plane_list, color='blue', marker='o', linestyle='None')
# plt.plot(solution['x'], plane_list, color='green', marker='+', linestyle='None', markersize=12)
# plt.plot(solution['x'] + actual_separation, plane_list, color='blue', marker='+', linestyle='None', markersize=12)
# plt.show()




def gantt_mult(sort = False):
    try:
        fig, ax = plt.subplots(runways,figsize=(8,3*runways+2))
        for runway in range(runways):
            
            #solution['x'][solution['runway'][:,runway]>0]
    
            if sort == False:
                for plane in range(len(plane_list)):
                    if solution['runway'][plane,runway] == 1:
                        ax[runway].add_patch(Rectangle((solution['x'][plane], plane+0.5), actual_separation[plane], 1))
                        
                        ax[runway].plot(E[plane], plane_list[plane], color='green', marker='.', linestyle='None')
                        ax[runway].plot(T[plane], plane_list[plane], color='yellow', marker='.', linestyle='None')
                        #ax.plot(L[plane], plane_list[plane], color='red', marker='.', linestyle='None')
            
            elif sort == True:
                sort_separation = actual_separation[solution['x'].argsort()]
                sort_solution = solution['x'][solution['x'].argsort()]
                
                sort_E = E[solution['x'].argsort()]
                sort_T = T[solution['x'].argsort()]
                sort_L = L[solution['x'].argsort()]
                
                for plane in range(planes):
                    if solution['runway'][plane,runway] == 1:
                        ax[runway].add_patch(Rectangle((sort_solution[plane], plane+0.5), sort_separation[plane], 1))
                        
                        ax[runway].plot(sort_E[plane], plane_list[plane], color='green', marker='.', linestyle='None')
                        ax[runway].plot(sort_T[plane], plane_list[plane], color='yellow', marker='.', linestyle='None')
                        #ax[runway].plot(sort_L[plane], plane_list[plane], color='red', marker='.', linestyle='None')
            if planes < 21:
                ax[runway].set_yticks(plane_list[solution['runway'][:,runway]>0])
            
            ax[runway].grid()
        temp = 1    
        for a in ax.flat:
            a.set(xlabel='Time [s]', ylabel='Plane, Runway ' + str(temp))
            temp +=1
            
            
        
        if sort == False:
            plt.suptitle("Non-Sorted Gantt Chart\nFile: "+ str(file)+  ", # of Runways: " + str(runways) + ", Cost = "+ str(round(model.objVal,1)))
        elif sort == True:
            plt.suptitle("Sorted Gantt Chart\nFile: "+ str(file)+  ", # of Runways: " + str(runways) + ", Cost = "+ str(round(model.objVal,1)))
        
        plt.legend(["Landing Time plus Separation", "Earliest Landing Time", "Latest Landing Time"])
        plt.show()

       
        
    except:
        print('single runway, cannot plot multiple runways')
        plt.close()



def gantt(sort = False):
    fig, ax = plt.subplots()
    colors = ['blue','red', 'grey', 'yellow', 'brown']
    if sort == False:
        plt.title("Non-Sorted Gantt Chart\nFile: "+ str(file)+  ", # of Runways: " + str(runways) + ", Cost = "+ str(round(model.objVal,1)))
        ax.plot(E, plane_list, color='green', marker='.', linestyle='None')
        ax.plot(T, plane_list, color='yellow', marker='.', linestyle='None')
        #ax.plot(L, plane_list, color='red', marker='.', linestyle='None')
        
        for plane in range(planes):
            color_index = solution['runway'][plane].argmax()
            ax.add_patch(Rectangle((solution['x'][plane], plane+0.5), actual_separation[plane], 1, color = colors[color_index]))
    
    elif sort == True:
        plt.title("Sorted Gantt Chart\nFile: "+ str(file)+  ", # of Runways: " + str(runways) + ", Cost = "+ str(round(model.objVal,1)))
        sort_separation = actual_separation[solution['x'].argsort()]
        sort_solution = solution['x'][solution['x'].argsort()]
        ax.plot(E[solution['x'].argsort()], plane_list, color='green', marker='.', linestyle='None')
        ax.plot(T[solution['x'].argsort()], plane_list, color='yellow', marker='.', linestyle='None')
        #ax.plot(L[solution['x'].argsort()], plane_list, color='red', marker='.', linestyle='None')
        
        for plane in range(planes):
            color_index = solution['runway'][plane].argmax()
            ax.add_patch(Rectangle((sort_solution[plane], plane+0.5), sort_separation[plane], 1, color = colors[color_index]))
    if planes < 21:
        plt.yticks(plane_list)
    plt.ylabel('Plane')
    plt.xlabel('Time [s]')
    plt.grid()
    legend_list = ["Earliest Landing Time", "Target Landing Time"]
    legend_list.extend(["Landing time plus separation runway " + str(i+1) for i in range(runways)])
    plt.legend(legend_list)

    plt.show()
    
def delay_histo(log = False, lowerlim = True, save = False):
    timedelta = -solution['alpha'] + solution['beta']
    if sum(timedelta) == 0:
        print('no delay, no histogram for you')
        return
    maxdelay = max(max(solution['alpha']),max(solution['beta']))
    step = 10
    pos_bins = np.arange(0,maxdelay+step, step, dtype = int)    
    neg_bins = np.arange(0,-maxdelay-step, -step, dtype = int) 
    pos_bins[0] = 1
    neg_bins[0] = -1
    
    bins = np.concatenate((np.flip(neg_bins),pos_bins))
    plt.figure()
    counts = plt.hist(x = timedelta, bins = bins, rwidth = 0.9)
    begindex = np.where(counts[0]>0)[0][0]
    bins[bins==1] = 0
    bins[bins==-1] = 0
    plt.xticks(bins[begindex:])
    plt.xlim(bins[begindex]-step,bins[-1]+step)
    if log:
        plt.yscale('log')
    elif lowerlim:
        ylimiter = max(max(counts[0][:np.argmax(counts[0])]),max(counts[0][np.argmax(counts[0])+1:]))
        
        plt.ylim(0,math.ceil(ylimiter/10)*10)
        zero_val = len(timedelta)-np.count_nonzero(timedelta)
        plt.title('Amount of Aircraft with Shifted Landing Times\n # of A/C with zero shift: ' + str(zero_val)+"\nFile: "+ str(file)+  ", # of Runways: " + str(runways) + ", Cost = "+ str(round(model.objVal,1)))
    #plt.yticks(np.concatenate((np.arange(0,10), np.arange(10,100,10))))
    #plt.grid()
    plt.xlabel('Time Shift [s]')
    plt.ylabel("Number of aircraft")
    plt.show()
    
def noise_boxplot(save = False):
    

    all_levels = []
    all_counts = []
 
    
    for i in range(runways):
        rw_noise = (solution['runway'][:,i]*noise_levels)[solution['runway'][:,i]*noise_levels !=0]
        levels, counts = np.unique(rw_noise, return_counts=True)
        counts = counts[levels.argsort()]
        levels = levels[levels.argsort()]
        all_levels.append(levels)
        all_counts.append(counts)
        

    
    
    
    plt.figure()
    
    for runway in range(runways):
        x = [i for i in range(len(all_levels[runway]))]
        plt.subplot(101 + runways*10 + runway)
        noise_labels = ['Light', 'Medium', 'Heavy']
        
        for j in range(len(levels)):
            plt.bar(x[j], all_counts[runway][j], label = 'runway: ' + str(runway))
            noise_labels.append("Noise level: " + str(j))
        plt.xticks(x, noise_labels[:len(levels)])
        plt.ylim(0,max(np.concatenate(all_counts))+2)
        plt.title('Runway ' + str(runway+1))
        plt.xlabel("Noise Penalty: " + str(landing_cost[runway]))
        plt.grid(axis = 'y') 
    plt.suptitle("Number of Aircraft per Noise Category, per Runway\nFile: "+ str(file)+  ", # of Runways: " + str(runways) + ", Cost = "+ str(round(model.objVal,1)))    
    plt.show()


def gantt2():
    fig, ax = plt.subplots()
    colors = ['blue', 'red','red', 'blue', 'brown']
   
    plt.title("Gantt Chart per Runway\nFile: "+ str(file)+  ", # of Runways: " + str(runways) + ", Cost = "+ str(round(model.objVal,1)))
    # ax.plot(E, np.ones(20), color='green', marker='.', linestyle='None')
    ax.plot(solution['x'][0], -1, color='cyan', marker='.', linestyle='None')
    #ax.plot(L, plane_list, color='red', marker='.', linestyle='None')
    
    width = 0.7
    alternate = np.zeros(runways, dtype = int)
    
    for plane in range(planes):
        
        rwy_index = solution['runway'][plane].argmax()
        color_index = rwy_index
        

        
        ax.add_patch(Rectangle((solution['x'][plane], rwy_index + 1 - 0.5*width), 0.97*rwy_separation[rwy_index][plane], width, edgecolor = colors[2*color_index + alternate[rwy_index]], fill = False))
        ax.plot(solution['x'][plane], rwy_index + 1, color='yellow', marker='+', linestyle='None')
        if alternate[rwy_index] == 0:
            alternate[rwy_index] = 1
        elif alternate [rwy_index] == 1:
            alternate[rwy_index] = 0


    ax.set_yticks(np.arange(1,runways+1))
    #ax.set_xticks(solution['x'])
    plt.ylim(0,runways+1)

    plt.ylabel('Runway')
    plt.xlabel('Time [s]')
    plt.grid()

    plt.show()


def plot(sort = True):
    plt.close('all')
    delay_histo()
    noise_boxplot()
    gantt(sort)
    gantt2()
    if runways > 1:
        gantt_mult(sort)
    bats = 0
    #bats = batch()
    return bats

bats = plot()

print('delay cost =',final_delay_cost)
print('noise cost =',final_noise_cost)