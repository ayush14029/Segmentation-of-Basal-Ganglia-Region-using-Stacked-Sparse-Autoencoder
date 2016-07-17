hiddenSize1 = 200;

autoenc1 = trainAutoencoder(train_noise,hiddenSize1, ...
    'MaxEpochs',1000, ...
    'L2WeightRegularization',0.015, ...
    'SparsityRegularization',4, ...
    'SparsityProportion',0.36, ...
    'UseGPU',true,...
    'ScaleData', false);
feat1 = encode(autoenc1,train_noise); 
