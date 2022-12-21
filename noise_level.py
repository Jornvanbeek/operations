from read_files import read_file
import numpy as np


def weight_indexes(spacing_array):
    S = spacing_array
    planes = len(S)
    avg_spacing = np.zeros(planes)
    for i in range(planes):
        req_spacing = np.delete(S[i], i)
        avg_spacing[i] = np.average(req_spacing)

    # unq_idx is a list with the weight class of the a/c: 0,1,2 (light,medium,heavy)
    unq, unq_idx, unq_cnt = np.unique(avg_spacing, return_inverse=True, return_counts=True)
    
    # SEL per aircraft class in dBA
    SEL = [10, 15, 20]
    
    for j in range(3):
        unq_idx[unq_idx==j] = SEL[j]
    return unq_idx

for i in range(13):

    file_number = i+1
    S = read_file(file_number)[1]
    #print(i+1,weight_indexes(S))
