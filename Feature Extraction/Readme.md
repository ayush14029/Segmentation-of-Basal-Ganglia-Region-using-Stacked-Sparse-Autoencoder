# Feature Extraction

1. Features are extracted from 50 chosen training MRIs. The pruned area of the images - 74x40 is considered.
2. Data is taken until atleast 500 voxels of each class are not taken (including no ROI).
3. This ultimately gives us a feature martrix of 156x125000 dimension. (50x500x5=125000, 156 features for each vector).
4. The feature vector consist of the following - 121 intensities, 3 coordinates, 5 probabilities corresponding to each ROI and 27 binned groups corresponding to the frequency distribution of the neighbouring voxels belonging to ROI.
