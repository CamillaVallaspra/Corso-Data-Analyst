# In una catena di montaggio abbiamo una struttura metallica di 28.75 cm di lunghezza; 
# per assicurarne la stabilità, è necessario inserire 15 rivetti, dei quali uno all'inizio e uno alla fine, e tutti quanti separati dalla stessa distanza; 
# come possiamo calcolare i punti esatti in cui inserire i rivetti tramite NumPy?

import numpy as np

array = np.linspace(0, 28.75, 15)
print(array)