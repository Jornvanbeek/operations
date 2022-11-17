import numpy as np
#import os
def read_file(N):
    #read the file, write it to 'lines' and close it
    with open('airland_data/airland'+str(N)+'.txt', 'r') as f:
        lines = [line.strip() for line in f if line.strip()] #remove empty lines
    f.close()
    #print(lines)
    
    #set up everything for sorting the data out
    amount_planes = int(lines[0].split()[0])
    planes = np.zeros((amount_planes,6)) #shape of the array with for each plane a list with the timings
    separations = np.zeros((amount_planes,amount_planes)) #list of the separations from and for each plane
    sep_multiple = int((len(lines)-1-amount_planes)/amount_planes) #multiple of lines on which the separation is written. it will be converted to a single list below
    #print(sep_multiple)
    
    #loop through each plane, select the according line for the timings and concatenate the lines with the spacing from all other planes
    for i in range(amount_planes):
        time_i = [float(x) for x in lines[(sep_multiple+1)*i+1].split()] # read list of times and penalties, convert to float
        sep_i = []
        for j in range(sep_multiple):
            sep_i += [float(y) for y in lines[(sep_multiple+1)*i+2+j].split()]
        #print(sep_i)
        planes[i] = np.array(time_i)
        separations[i] = np.array(sep_i)
    return planes,separations

# outpt = read_file(10)
# print(outpt[1])