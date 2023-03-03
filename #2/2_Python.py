import numpy as np
from numpy import random  
import matplotlib.pyplot as plt

# Data
A = random.rand(50, 100)

# 1) Define a canvas and axis
fig, ax = plt.subplots(figsize = (12,6))  # the figure size 12:6 —— rectangle matrix
# 2) Plotting
image = ax.imshow(A, cmap = 'hot')        # the image is recorded by image
# 3) Set title and axes title
ax.set_xlabel('X-axis', fontsize = 12)
ax.set_ylabel('Y-axis', fontsize = 12)
ax.set_title('Initial field: %s\n Time = %fs' % ('Spike', 0.0), fontsize = 14)  # Title can have two lines
# 4) Set axes tricks
# Note: xtricks里是指定已有的索引，xtricklabels里是对应的自定义的别名
#       就因为python是从0开始，故用xtricklabels把0重命名为1，把99重命名为100
ax.set_xticks([0, 20, 40, 60, 80, 99])                       # Set x-axis tricks to these specific indexes
ax.set_xticklabels(['1', '20', '40', '60', '80', '100'])     # Rename the tricks 
ax.set_yticks([0, 10, 20, 30, 40, 49])                       # Set y-axis tricks to these specific indexes 
ax.set_yticklabels(['1', '10', '20', '30', '40', '50'])      # Rename the tricks
# 5) Final display
plt.show()    # Only for displaying in the window. Dont use fig.show()
# 6) Final save
fig.savefig('result.png', bbox_inches = 'tight', dpi = 400)  # Dont use plt.savefig()
