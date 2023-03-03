<!--! 寻找的是标题。正文直接写标题后即可 -->
<div>
  <a href="#中文">中文</a> |
  <a href="#english">English</a>
</div>

<!-- Chinese VERSION -->

<h1 id="中文"> </h1>   <!--!  -->

## Python中使用Matplotlib绘图的标准格式

绘图可简单可复杂，使用标准绘图格式可进行多种更复杂、更精确的设置。本例将使用标准格式绘制一个二维长方形矩阵，包含标题、轴名、轴刻度、轴刻度重命名的设置。

标准绘图格式：fig, ax = plt.subplots() &nbsp; 通过fig和ax共同绘制一张复杂的图。简要说明如下：

- plt.subplots()：创建一张画布（传给fig）和初始的轴（传给ax）。故之后画一张图，就通过fig和ax来完成；
- fig：可控制整张画布中的元素，一般用它来添加新的轴（fig.add_axes）和加colorbar（fig.colorbar）；
- ax：控制轴所在区域的各个元素，例如画图（ax.imshow）、设置坐标轴和标题（ax.set_xlabel）、设置坐标轴刻度（ax.set_xticks）等。

感受：个人感觉，Matplotlib绘图不如Matlab，前者需要更多的人为控制才能画出好看的图。

<!-- English VERSION -->

<h1 id="english"> </h1>

## The standard format for plotting with Matplotlib in Python

Plotting can be simple or complex. Standard plotting format allows for a variety of specific and precise settings. In this example, a 2D rectangle matrix is plotted using a standard format, including settings for a title, axes, axes' ticks, display and final save. 

The standard plotting format is: **fig, ax = plt.subplots()** &nbsp; Using 'fig' and 'ax' together to plot a figure. A brief explanation is below:

- plt.subplots(): Create a canvas (fig) and axis (ax). The following plotting will be completed by parameters 'fig' and 'ax'
- fig: Control all elements in the canvas. We usually use it to add a new axis (fig.add_axes) and a colorbar (fig.colorbar)
- ax: Control all elements in the original axis' area, such as plotting (ax.imshow), setting title and axes (ax.set_xlabel), setting ticks (ax.set_xticks) and so on.

Personally, I feel Matplotlib is less convenient than Matlab. The former requires more manual control in order to create perfect figures.
