%softnet = trainSoftmaxLayer(feat4,T,'LossFunction','crossentropy');
deepnet = stack(autoenc1,autoenc2,autoenc3,autoenc4,softnet); 
deepnet = train(deepnet,train_noise,T,...
    'useGpu','no');