import numpy as np
from numpy import random  
import matplotlib.pyplot as plt

# Data
A = random.rand(50, 100)

# Define a canvas and axis
fig, ax = plt.subplots(figsize = (12,6))          # the figure size 12:6 —— rectangle matrix
# Define a new axis for colorbar √ √ √ 
cax = fig.add_axes([ax.get_position().x1 + 0.01,  # 相对于图像image右边缘x1坐标水平(向右)偏移+0.01
                    ax.get_position().y0,         # 相对于图像image下边缘y0坐标的垂直偏移0 —— 上下对齐
                    0.02,                         # 新轴的宽度0.02 —— colorbar自己的宽度
                    ax.get_position().height])    # 新轴的高度 = 原轴的高度 —— colorbar的高度 = 原figure的宽度!!

# Plot and set: use ax
image = ax.imshow(A, cmap = 'hot')                
ax.set_xlabel('X-axis', fontsize = 12)
ax.set_ylabel('Y-axis', fontsize = 12)
ax.set_title('Initial field in homogeneous medium: %s\n Time = %fs' % ('Random', 0), fontsize = 14)
ax.set_xticks([0, 20, 40, 60, 80, 99])                     # set x-axis tricks
ax.set_xticklabels(['1', '20', '40', '60', '80', '100'])   # rename tricks
ax.set_yticks([0, 10, 20, 30, 40, 49])                     # set y-axis tricks
ax.set_yticklabels(['1', '10', '20', '30', '40', '50'])    # rename tricks
# Colorbar
clb = fig.colorbar(image, cax = cax)              # create the colorbar in cax area !!!
clb.ax.set_ylabel('Temperature', fontsize = 10)   # set the ylabel of the colorbar

# Final display
plt.show()