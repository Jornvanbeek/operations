from read_files import read_file
import numpy as np

def weight_indexes(spacing_array)
    S = spacing_array
    planes = len(S)
    avg_spacing = np.zeros(planes)
    for i in range(planes):
        req_spacing = np.delete(S[i], i)
        avg_spacing[i] = np.average(req_spacing)

    unq, unq_idx, unq_cnt = np.unique(avg_spacing, return_inverse=True, return_counts=True)
    return unq_idx