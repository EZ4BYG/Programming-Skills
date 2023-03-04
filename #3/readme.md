<!--! 寻找的是标题。正文直接写标题后即可 -->
<div>
  <a href="#中文">中文</a> |
  <a href="#english">English</a>
</div>

<!-- Chinese VERSION -->

<h1 id="中文"> </h1>   <!--!  -->

## Matplotlib中控制colorbar长度和图片宽度一致

在Matplotlib中若绘制的图像（以二维矩阵为例）为非正方形，则colorbar的长度非常难控制，需要人为调整才能使得colorbar的高度和figure的宽度一致。网上方法众多，但本文方法最有效、最好理解。

大致思路：
- fig, ax = plt.subplots() &nbsp; 首先用[标准绘图格式](https://github.com/EZ4BYG/Programming-Skills/tree/main/%232)创建初始画布和轴
- cax = fig.add_axes() &nbsp; 用fig变量在画布中创建一个新轴，并设置新轴cax高度以及相对于原始轴ax的位置
- fig.colorbar(cax = cax)  &nbsp; 用fig在新轴cax处创建colorbar

<!-- Chinese VERSION -->

<h1 id="english"> </h1>   <!--!  -->

## Control the length of colorbar to equal the width of the figure in Matplotlib

If the figure (e.g 2D matrix) is not a square, it will be difficult to control the height of the colorbar. It requires manual adjustments to make sure that the height of the colorbar equals the width of the figure. Many ways are available online, but this example provides the most effective and easy-to-understand one.

- fig, ax = plt.subplots() &nbsp; First, create an initial canvas and axis using the [standard plotting format](https://github.com/EZ4BYG/Programming-Skills/tree/main/%232).
- cax = fig.add_axes() &nbsp; Create a new axis named 'cax' in the canvas using 'fig', then set the height of the new axis and its position relative to the original axis 'ax'
- fig.colorbar(cax = cax)  &nbsp; Use 'fig' to create the colorbar in the 'cax' area
