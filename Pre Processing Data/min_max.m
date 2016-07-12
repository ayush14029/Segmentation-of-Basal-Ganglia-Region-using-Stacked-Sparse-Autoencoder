mini=500,minj=500,mink=500;
maxi=0,maxj=0,maxk=0;
for l=1:83
    path='C:\Users\chetan\Desktop\data_seg\processed\';
    path=strcat(path,int2str(l),'.nii');
    load_nii(path);
    temp=ans;
    fprintf(int2str(l));
    ss=strcat(int2str(size(temp.img,1)),int2str(size(temp.img,2)),int2str(size(temp.img,3)),'\n');
    fprintf(ss);
    if(size(temp.img,1)==256 && size(temp.img,2)==128 && size(temp.img,3)==256)        
        %fprintf(path);
        %load_nii(path);
        for j=1:256
            slice = temp.img(:,:,j);
            for k=1:256
                for i=1:128
                    if(slice(k,i)==11 || slice(k,i)==12 || slice(k,i)==13 || slice (k,i)==26 || slice(k,i)==50 || slice(k,i)==51 || slice(k,i)==52 || slice(k,i)==58)
                    if(maxi<k)
                        maxi=k;
                    elseif(mini>k)
                        mini=k;
                    end
                    if(maxj<i)
                        maxj=i;
                    elseif(minj>i)
                        minj=i;
                    end
                    if(maxk<j)
                        maxk=j;
                    elseif(mink>j)
                        mink=j;
                    end
                    end
                end
            end
        end
    end
end