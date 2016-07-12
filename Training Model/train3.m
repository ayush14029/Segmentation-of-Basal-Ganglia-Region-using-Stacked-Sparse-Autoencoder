hiddenSize3 = 250;
autoenc3 = trainAutoencoder(feat2,hiddenSize3, ...
    'MaxEpochs',1000, ...
    'L2WeightRegularization',0.005, ...
    'SparsityRegularization',4, ...
    'SparsityProportion',0.36, ...
    'UseGPU',true,...
    'ScaleData', false);
feat3 = encode(autoenc3 , feat2) ;