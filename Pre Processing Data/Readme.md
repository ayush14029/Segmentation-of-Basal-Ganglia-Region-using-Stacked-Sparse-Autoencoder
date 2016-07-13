# Data Set-Up and pre processing
Aim : To obtain a mask from the probability map of the images in the dataset.

1. Start by finding the maximum and minimum coordinates on all 4 sides of the image.
2. Once you get that, iterate through this specific size and mark the regions according to their ROI
3. One will obtain a pruned mask which can now be used for training.

Files in this Directory:

min_max.m: Extracts the minimium and maximium cordinates in all three planes which will enclose all the four RoI.
So 256x128x256 volume will shrink to 73x39x54, this will ensure that we are working only in the that part of the  where either of four RoI are present. 

pruned.m: Re-shapes 3D volume of 83 MRIs.

