for l=1:83
    path='C:\Users\chetan\Desktop\data_seg\processed\';
    path=strcat(path,int2str(l),'.nii');
    load_nii(path);
    fprintf(int2str(l));
    temp2=ans;
    for k=106:159
        slice=temp2.img(:,:,k);
        for i=92:164
                for j=51:89
                    x=i-92+1;
                    y=j-51+1;
                    z=k-106+1;
                    %fprintf('%d %d',x,y);
                    temp(x,y,z)=slice(i,j);
                end
        end
    end
        path2='C:\Users\chetan\Desktop\data_seg\pruned\';
        path2=strcat(path2,int2str(l),'.nii');
        temp2.img=temp;
        temp2.hdr.dime.dim=[3 73 39 54 1 1 1 1];
        
        save_nii(temp2,path2);
end
                    