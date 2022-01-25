# CheeseMaker
This tool segments a single confocal section image of Drosophila brain stained with Eosin to detect vacuoles associated with neurodegeneration. It is assisted by a pipeline generated with CLIJ.

Download and install the tool into folder toolset of FIJI: FIJI.app>macros>toolsets

![Fig 3 - CheeseMaker Pipeline](https://user-images.githubusercontent.com/16870811/150916420-a5bf4e3e-91e0-4b25-91c0-1e4c9a5e6839.jpg)

Figure1: Open the image on FIJI, select the CheeseMaker tool on the toolbars, click on the image. After the text box displays, select a Region of Interest (ROI) with any selecting tool and click "Ok". The tool will do a series of processing for segmentation generated with clij. The final result will consist of your image displayed in gray scale and the pores detected in red. Also a porosity measurement which is the area fraction of the ROI classified as pore.
