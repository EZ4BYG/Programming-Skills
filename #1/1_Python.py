import numpy as np
from numpy import random  
import matplotlib.pyplot as plt

A = np.zeros((50,100))

# Display
fig, ax = plt.subplots(figsize = (12,6))
t = 0
while t < 10:
    A = A + random.rand(50,100)
    # Plotting
    image = ax.imshow(A)
    # Display
    plt.show(block = False)   # 'block = False' parameter is essential
    plt.pause(0.01)           # 'plt.pause' is essential !
    # Update the time
    t = t + 1

