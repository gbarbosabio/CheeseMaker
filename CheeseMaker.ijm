macro "CheeseMaker Tool - C000D13D14D15D16D17D22D23D27D28D32D38D42D48D52D58D62D63D67D68D73D74D75D76D77DacDadDbbDbcDbdDbeDcbDceDdbDdcDddDdeDecDedC888Ced8CfffD24D25D26D33D34D35D36D37D43D44D45D46D47D53D54D55D56D57D64D65D66DccDcd"{
waitForUser("Cheese Selector", "Define the ROI using a selection tool");

roiManager("add");
run("Select None");

nome=getTitle();

// To make this script run in Fiji, please activate 
// the clij and clij2 update sites in your Fiji 
// installation. Read more: https://clij.github.io

// Generator version: 2.5.1.1

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");

// Load image from disc 
image_1 = getTitle();
Ext.CLIJ2_pushCurrentZStack(image_1);

// Copy
Ext.CLIJ2_copy(image_1, image_2);
Ext.CLIJ2_release(image_1);

Ext.CLIJ2_pull(image_2);

// Divide By Gaussian Background
sigmaX = 30.5;
sigmaY = 30.5;
sigmaZ = 10.0;
Ext.CLIJ2_divideByGaussianBackground(image_2, image_3, sigmaX, sigmaY, sigmaZ);
Ext.CLIJ2_release(image_2);

Ext.CLIJ2_pull(image_3);

// Smaller Or Equal Constant
constant = 0.3;
Ext.CLIJ2_smallerOrEqualConstant(image_3, image_4, constant);
Ext.CLIJ2_release(image_3);

Ext.CLIJ2_pull(image_4);

// Closing Diamond
number_of_dilations_and_erotions = 3.0;
Ext.CLIJ2_closingDiamond(image_4, image_5, number_of_dilations_and_erotions);
Ext.CLIJ2_release(image_4);

Ext.CLIJ2_pull(image_5);

run("CLIJ2 Macro Extensions", "cl_device=[Intel(R) UHD Graphics]");

// clear
Ext.CLIJ2_clear();

list = getList("image.titles");
selectWindow(list[4]);
setOption("ScaleConversions", true);
run("8-bit");
run("Convert to Mask");
run("Analyze Particles...", "size=5-Infinity show=Masks");
roiManager("Select", 0);
run("Set Measurements...", "area area_fraction display redirect=None decimal=3");
run("Measure");

list = getList("image.titles");
selectWindow(list[5]);
run("Select None");
run("8-bit");
run("Red");
roiManager("Select", 0);
run("Clear Outside");
run("Select None");
rename("hole");
list = getList("image.titles");
run("Merge Channels...", "c1="+list[1]+" c2="+list[5]+" create keep");
rename(nome);
roiManager("delete");
}
