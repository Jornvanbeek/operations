import numpy as np
import os
def read_file(N):
    with open('airland_data/airland'+str(N)+'.txt', 'r') as f:
        lines = [line.strip() for line in f if line.strip()]
    f.close()
    #print(lines)
    amount_planes = int(lines[0].split()[0])
    p = np.zeros((amount_planes,6+amount_planes)) #shape of the array with for each plane a list with the timings, and a list of the separations
    sep_multiple = int((len(lines)-1-amount_planes)/amount_planes) #multiple of lines on which the separation is written. it will be converted to a single list below
    #print(sep_multiple)
    for i in range(amount_planes):
        time_i = [float(x) for x in lines[(sep_multiple+1)*i+1].split()] # read list of times and penalties, convert to float
        sep_i = []
        for j in range(sep_multiple):
            sep_i += [float(y) for y in lines[(sep_multiple+1)*i+1+j].split()]
        print(sep_i)
        #p[i] = time_i,sep_i
    return p

outpt = read_file(1)
print(outpt)