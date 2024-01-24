# Abbiamo il seguente array NumPy: 
import numpy as np

linear_data = np.array([x for x in range(27)]) 

# Lo ridimensioniamo mediante il metodo .reshape(): 

reshaped_data = linear_data.reshape(3, 3, 3)
print(linear_data)
print(reshaped_data)

# Quante dimensioni ha il nuovo array? Come facciamo per accedere ai singoli elementi?

print(linear_data.size)
print(reshaped_data.shape)
