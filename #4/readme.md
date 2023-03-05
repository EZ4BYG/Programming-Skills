<!--! 寻找的是标题。正文直接写标题后即可 -->
<div>
  <a href="#中文">中文</a> |
  <a href="#english">English</a>
</div>

<!-- Chinese VERSION -->

<h1 id="中文"> </h1>   <!--!  -->

## 使用Matlab新函数tiledlayout和exportgraphics绘制保存无白边图像

绘制多子图图像时，可用：tiledlayout + nexttile + exportgraphics快速实现。
- tiledlayout：其负责声明mxn的绘图区，并可设定子图间紧密排布
- nextile：相当于subplots
- exportgraphics：可快速保存去掉白边的图片，并可设置分辨率等参数

<!-- English VERSION -->

<h1 id="english"> </h1>   <!--!  -->

## Use 'tiledlayout' and 'exportgraphics' in Matlab to plot and save image without white space

When creating multiple subplots in Matlab, we can use 'tiledlayout + nexttile + exportgraphics' to quickly achieve the goal.
- tiledlayout: Declare an mxn figure area and specify a tight arrangement between the subplots
- nextile: Similar to 'subplots' function 
- exportgraphics: Able to quickly save the image without white space and easily set other parameters (e.g. resolution)
