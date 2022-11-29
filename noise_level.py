from read_files import read_file
import numpy as np


def weight_indexes(spacing_array):
    S = spacing_array
    planes = len(S)
    avg_spacing = np.zeros(planes)
    for i in range(planes):
        req_spacing = np.delete(S[i], i)
        avg_spacing[i] = np.average(req_spacing)

    #unq_idx is a list with the weight class of the a/c: 0,1,2 (light,medium,heavy)
    unq, unq_idx, unq_cnt = np.unique(avg_spacing, return_inverse=True, return_counts=True)
    return unq_idx


file_number = 1

S = read_file(file_number)[1]
print(weight_indexes(S))