n=zeros(30,5);
for i=1:30
    Vtest=squeeze(train(i,:,:));
    Vval=squeeze(T(i,:,:));
    y=deepnet(Vtest);
    [a1 a2 a3 a4]=confusion(Vval,y);
    for r=1:5
        dice2=2*a4(r,3)/(2*a4(r,3)+a4(r,1)+a4(r,2));
        n(i,r)=dice2;
    end        
end
