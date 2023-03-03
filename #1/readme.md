<!--! 寻找的是标题。正文直接写标题后即可 -->
<div>
  <a href="#中文">中文</a> |
  <a href="#english">English</a>
</div>

<!-- Chinese VERSION -->

<h1 id="中文"> </h1>   <!--! 里面是标题: 可以没有标题 -->

## 在python、jupyter和Matlab中实现动态二维矩阵的绘制

想绘制（在循环中）动态变化的二维矩阵（例如2D热扩散方程的有限差分），不同语言有不同的实现方式。另外，即使同为python，IDE和jupyter notebook的实现方式也不同。

在Matlab、Python IDE和Jupyter notebook中，绘图按从简到繁排序：Matlab > Python IDE > Jupyter notebook
- Matlab：图像会自动覆盖，只需在循环中加上drawnow命令即可；
- Python IDE：需要在循环中加入plt.show和plt.pause命令
  - 注意1：绘制简单图时加这2条命令足够，其中“停顿命令plt.pause”是必不可少的！
  - 注意2：最常出现的问题是“图像重叠”或者“colorbar重叠”。尤其带着colorbar，且colorbar的数值也在不断变化时，可能需要在循环中不断“**刷新**”绘制colorbar的axis！[参考一个复杂例子](https://github.com/EZ4BYG/Numerical_Modelling_Geophysics/blob/main/Exercise%201/e1_python.py)
- Jupyter Notebook：由于Jupyter的绘图引擎和普通IDE不同，故较为麻烦，网上方法几乎都不可用。简言之：需用导入IPython.display包，用里面的clear_output（不断清除原图）和display（不断展示新图）这2个方法实现。
  - 注意1：同样，当有colorbar时会变复杂。[参考一个复杂例子](https://github.com/EZ4BYG/Numerical_Modelling_Geophysics/blob/main/Exercise%201/e1_jupyter.ipynb)

总结：Matlab绘制最为方便，不论简单或复杂图，Matlab都无需额外考虑colorbar的情况（相对位置、长度等）。Python中使用Matplotlib需要额外考虑colorbar，若想画出和Matlab一样美观的colorbar，需要额外进行axis方面的设置。

<h1 id="english"> </h1>   <!--! 里面是标题: 可以没有标题 -->

## Plotting a dynamically changing 2D matrix in Python, Jupyter, and MATLAB

To plot a dynamically changing 2D matrix in a loop (e.g. FD approximates the 2D heat diffusion), there are different implementations in different languages. Moreover, even within the same Python, Python IDE and Jupyter Notebook are also different. 

The complexity of plotting is ranked from simple to complex: Matlab > Python IDE > Jupyter Notebook.
- Matlab: Old figure will be automatically overwritten by the next one, so you only need to add 'drawnow' command in the loop;
- Python IDE: add 'plt.show' and 'plt.pause' in the loop
  - Note1: These two commands are enough to plot simple figures, and the pause command 'plt.pause' is essential!
  - Note2: The most common problems are 'Figures overlapping' and 'colorbar overlapping'. Please pay more attention to the colorbar, especially when it is also constantly changing in the loop. For this case, maybe you need constantly '**refresh**' the axis where the colorbar is located. [A complex example](https://github.com/EZ4BYG/Numerical_Modelling_Geophysics/blob/main/Exercise%201/e1_python.py)
- Jupyter Notebook: The plotting engine in Jupyter Notebook is different from the IDE, so Jupyter is more complicated. One good solution: Import 'IPython.display' package, using 'clear_output' method (clean up the old figure) and 'display' method (display the new figure) to achieve the goal. 
  - Note1: Similarly, it will be complex when colorbar appears. [A complex example](https://github.com/EZ4BYG/Numerical_Modelling_Geophysics/blob/main/Exercise%201/e1_jupyter.ipynb)
  
In sum, Matlab is the most convenient for plotting because you don't need to consider colorbar settings. Matlab will do everything for you. However, in Python, using Matplotlib requires extra considerations of colorbar, such as its relative position and length. So if you want to use Python to draw a perfect figure with appropriate colorbar like in Matlab, additional **axis settings** are needed. 
