# Learned Features are better for Ethnicity Classification

This repository provides implementation for the paper, [Learned Features are better for Ethnicity Classification](https://content.sciendo.com/view/journals/cait/17/3/article-p152.xml). 
It is recommended to go through the [Deep Face Recognition paper](http://www.robots.ox.ac.uk/~vgg/publications/2015/Parkhi15/parkhi15.pdf)
also.
### Prerequisites

Following are the softwares and tools needed to work with this repository. 

```
  1. Python 3.5 or 3.6
  2. Matlab 2015 or above
```
Code presented here is tested with Python 3.6 and Matlab 2016

### Installation

After installing Python and Matlab following are the packages that should be installed

```
  1. Python Packages (OpenCV, dlib, numpy)
  2. Matlab Toolbox(MatConvNet).     
```
To install the MatConvNet follow the instructions given [here](http://www.vlfeat.org/matconvnet/install/)

### Running the code

  * Download or clone the repository 
  * Create a new folder named, ``` VGG Network ``` in the main porject direcotry 
  * Download the pretrained VGG Face Network from [here](http://www.vlfeat.org/matconvnet/models/vgg-face.mat) in ``` VGG Network ``` folder
  * Copy images into the ``` Input_Images ``` folder. Some example images are already included
  * Open the ``` main.m ``` in Matlab and run the code
  * Output class of image will be save in ``` result structure``` with image name and class name

### License

Open source code snippets used in this project are Licensed. For details see ```Licenses``` folder
