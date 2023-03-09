<!--! 寻找的是标题。正文直接写标题后即可 -->
<div>
  <a href="#中文">中文</a> |
  <a href="#english">English</a>
</div>

<!-- Chinese VERSION -->

<h1 id="中文"> </h1>   <!--!  -->

## Matlab的colormap使用远古版本的seismic样式

较新版本的Matlab已经删除了colormap中的很多样式，其中就包括seismic。本文解决参考：[PyColormap4Matlab](https://github.com/f-k-s/PyColormap4Matlab) 

大致思路：调用Python中Matplotlib中的colormap，目前matplotlib自带的colormap种类要比Matlab多的多！所以电脑中必须有python.exe且安装了Matplotlib包。

使用：
- seismic = getPyPlot_cMap('seismic_r', [], [], '"python.exe的绝对路径"');  
- colormap(seismic)

<h1 id="english"> </h1>   <!--!  -->

## Matlab's colormap uses the (outdated version) seismic style 

Many styles, including seismic, have been removed from the colormap in relatively newer versions of Matlab. Reference: [PyColormap4Matlab](https://github.com/f-k-s/PyColormap4Matlab) 

The method is to utilize the colormap within Matplotlib in Python. Matplotlib currently offers a much wider variety of built-in colormap styles than Matlab. Therefore, your pc must have python.exe and already install Matplotlib package. 

Function:
- seismic = getPyPlot_cMap('seismic_r', [], [], '"python.exe absolute path in you pc"');  
- colormap(seismic)
