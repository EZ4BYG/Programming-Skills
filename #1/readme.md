<!--! 寻找的是标题。正文直接写标题后即可 -->
<div>
  <a href="#中文">中文</a> |
  <a href="#english">English</a>
</div>

<!-- Chinese VERSION -->

<h1 id="中文"> </h1>   <!--! 里面是标题: 可以没有标题 -->

## 在python、jupyter和matlab中实现动态二维矩阵的绘制

想绘制（在循环中）动态变化的二维矩阵（例如2D热扩散方程的有限差分），不同语言有不同的实现方式。另外，即使同为python，IDE和jupyter notebook的实现方式也不同。

在matlab、Python IDE和Jupyter notebook中，绘图按从简到繁排序：Matlab > Python IDE > Jupyter notebook
- Matlab：图像会自动覆盖，只需在循环中加上drawnow命令即可；
- Python：需要在循环中加入plt.show和plt.pause命令
  - 注意1：绘制简单图时加这2条命令足够，其中“停顿命令plt.pause”是必不可少的！
  - 注意2：最常出现的问题是“图像重叠”或者“colorbar重叠”。尤其带着colorbar，且colorbar的数值也在不断变化时，可能需要在循环中不断“**刷新**”绘制colorbar的axis！[参考一个复杂例子](https://github.com/EZ4BYG/Numerical_Modelling_Geophysics/blob/main/Exercise%201/e1_python.py)
- Jupyter：由于Jupyter的绘图引擎和普通IDE不同，故较为麻烦，网上方法几乎都不可用。简言之：需用导入IPython.display包，用里面的clear_output（不断清除原图）和display（不断展示新图）这2个方法实现。
  - 注意1：同样，当有colorbar时会变复杂。[参考一个复杂例子](https://github.com/EZ4BYG/Numerical_Modelling_Geophysics/blob/main/Exercise%201/e1_jupyter.ipynb)

<h1 id="english"> </h1>   <!--! 里面是标题: 可以没有标题 -->

## Plotting a dynamically changing 2D matrix in Python, Jupyter, and MATLAB


