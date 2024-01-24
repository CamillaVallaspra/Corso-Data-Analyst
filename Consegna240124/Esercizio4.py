# Abbiamo la seguente matrice:...
# Creiamo un ndarray con gli stessi valori. 
# Ci sono due modalità: inizializzare un array e poi inserire i valori nelle posizioni adatte, 
# oppure creare una lista di liste e poi effettuare un casting.

import numpy as np
# metodo 1
arrnp = np.array([1, 1, 1, 1, 5, 1, 1, 1, 20, -4, 0, 42])
arrnp = arrnp.reshape(3, 4)
print(arrnp)

# metodo 2
array = [[1, 1, 1, 1], [5, 1, 1, 1], [20, -4, 0, 42]]
array_np = np.array(array)
array_np_new = array_np.astype(np.int64)
print(array_np_new)