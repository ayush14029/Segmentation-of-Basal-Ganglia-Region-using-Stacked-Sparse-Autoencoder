# Data Set-Up and pre processing
Aim : To obtain a mask from the probability map of the images in the dataset.

1. Start by finding the maximum and minimum coordinates on all 4 sides of the image.
2. Once you get that, iterate through this specific size and mark the regions according to their ROI
3. One will obtain a pruned mask which can now be used for training.
