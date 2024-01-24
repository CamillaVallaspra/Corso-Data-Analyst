# Abbiamo una lista di liste: 

import numpy as np

mat = [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9], [10, 11, 12, 13, 14]] 

# Che tipo di struttura dati o matematica potrebbe rappresentare?
#   Una matrice.
# Notare che tutte le liste "interne" sono della stessa dimensione 
# Come facciamo per accedere ad un elemento in particolare?

mat = np.array(mat)
print(mat)


