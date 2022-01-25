# CheeseMaker
This tool segments a single confocal section image of Drosophila brain stained with Eosin to detect vacuoles associated with neurodegeneration. It is assisted by a pipeline generated with CLIJ.

Download and install the tool into folder toolset of FIJI: FIJI.app>macros>toolsets

![fig 3 github](https://user-images.githubusercontent.com/16870811/150917669-364903ff-44e9-4eb0-9f2d-303bf3509294.png)

Figure1: Open the image on FIJI, select the CheeseMaker tool on the toolbars, click on the image. After the text box displays, select a Region of Interest (ROI) with any selecting tool and click "Ok". The tool will do a series of processing for segmentation generated with clij. The final result will consist of your image displayed in gray scale and the pores detected in red. Also a porosity measurement which is the area fraction of the ROI classified as pore.
