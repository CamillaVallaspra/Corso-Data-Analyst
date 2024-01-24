# Creiamo il seguente ndarray 5×5:...
# Per ogni valore, sottraiamo il minimo (2) e poi dividiamo il risultato per il massimo (42) meno il minimo. 

import numpy as np
arr = [[10, 22, 21, 8, 9], [9, 42, 3, 18, 11], [5, 4, 30, 12, 29], [37, 31, 7, 2, 26], [8, 6, 4, 33, 15]]
arr_np = np.array(arr)
print(arr_np)

print((arr_np - arr_np.min())/(arr_np.max() - arr_np.min()))