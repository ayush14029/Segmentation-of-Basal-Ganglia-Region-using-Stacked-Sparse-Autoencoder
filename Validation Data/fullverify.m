for ij=1:30
% aa=0;
i=1;
for l=11:28
    c1=1;
    c2=1;
    c3=1;
    c4=1;
    c5=1;
    cord=[0 0 0];
    path='C:\Users\chetan\Desktop\data_seg\pruned\';
    path=strcat(path,int2str(l),'.nii');
    nii=load_nii(path);
    nii=nii.img;
    path2='C:\Users\chetan\Desktop\data_anat\pruned\';
    path2=strcat(path2,int2str(l),'.nii');
    nii2=load_nii(path2);
    nii2=nii2.img;
    fprintf('%dx%dx%d\n',cord(1),cord(2),cord(3));
    while(c1<501 || c2<501 || c3<501 || c4<501 || c5<501)
       
        cord(1)=randi(72)+1;
        cord(2)=randi(38)+1;
        cord(3)=randi(53)+1;
        if(cord(1)-5>0 && cord(2)-5>0 && cord(1)+5<74 && cord(2)<40)
        flag=0;
        %fprintf('%d %d %d\n',cord(1),cord(2),cord(3));
        if(nii(cord(1),cord(2),cord(3))==11 || nii(cord(1),cord(2),cord(3))==50)
            if(c1<501)
            flag=1;
                T(ij,1,i+aa)=1;
            c1=c1+1;
            end
        elseif(nii(cord(1),cord(2),cord(3))==12 || nii(cord(1),cord(2),cord(3))==51)
            if(c2<501)
                flag=1;
            T(ij,2,i+aa)=1;
            c2=c2+1;
            end
        elseif(nii(cord(1),cord(2),cord(3))==13 || nii(cord(1),cord(2),cord(3))==52)
            if(c3<501)
                flag=1;
            T(ij,3,i+aa)=1;
            c3=c3+1;
            end
        elseif(nii(cord(1),cord(2),cord(3))==26 || nii(cord(1),cord(2),cord(3))==58)
            if(c4<501)
                flag=1;
            T(ij,4,i+aa)=1;
            c4=c4+1;
            end
        else
            if(c5<501)
                flag=1;
                T(ij,5,i+aa)=1;
                c5=c5+1;
            end
        end
    if(flag==1)
    h=1;
    for j=cord(1)-5:cord(1)+5
        for k=cord(2)-5:cord(2)+5
            if(j>0 && j<74 && k>0 && k<40)
                  train(ij,h,i+aa)=nii2(j,k,cord(3));
%                 train(ij,h,i+aa)=train(ij,h,i+aa);
            if(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<3)
                train(ij,150,i+aa)=train(ij,150,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>3 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<6)
                train(ij,130,i+aa)=train(ij,130,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>6 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<9)
                train(ij,131,i+aa)=train(ij,131,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>9 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<12)
                train(ij,132,i+aa)=train(ij,132,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>12 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<15)
                train(ij,133,i+aa)=train(ij,133,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>15 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<18)
                train(ij,134,i+aa)=train(ij,134,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>18 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<21)
                train(ij,135,i+aa)=train(ij,135,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>21 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<24)
                train(ij,136,i+aa)=train(ij,136,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>24 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<27)
                train(ij,137,i+aa)=train(ij,137,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>27 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<30)
                train(ij,138,i+aa)=train(ij,138,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>30 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<33)
                train(ij,139,i+aa)=train(ij,139,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>33 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<36)
                train(ij,140,i+aa)=train(ij,140,i+aa)+1;
            elseif(pro(1, j, k,cord( 3))>36 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<39)
                train(ij,141,i+aa)=train(ij,141,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>39 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<42)
                train(ij,142,i+aa)=train(ij,142,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>42 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<45)
                train(ij,143,i+aa)=train(ij,143,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>45 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<48)
                train(ij,144,i+aa)=train(ij,144,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>48 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<51)
                train(ij,145,i+aa)=train(ij,145,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>51 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<54)
                train(ij,146,i+aa)=train(ij,146,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>54 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<57)
                train(ij,147,i+aa)=train(ij,147,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>57 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<60)
                train(ij,148,i+aa)=train(ij,148,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>60 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<63)
                train(ij,149,i+aa)=train(ij,149,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>63 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<66)
                train(ij,151,i+aa)=train(ij,151,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>66 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<69)
                train(ij,152,i+aa)=train(ij,152,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>69 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<72)
                train(ij,153,i+aa)=train(ij,153,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>72 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<75)
                train(ij,154,i+aa)=train(ij,154,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>75 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<78)
                train(ij,155,i+aa)=train(ij,155,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>78 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<83)
                train(ij,156,i+aa)=train(ij,156,i+aa)+1;
            end
           % else
                 %train_noise(h,i+aa)=0;
            end
            h=h+1;
        end
    end
    train(ij,h,i+aa)=cord(1);
    train(ij,h,i+aa)=train(ij,h,i+aa);
    train(ij,h+1,i+aa)=cord(2);
    train(ij,h+1,i+aa)=train(ij,h+1,i+aa);
    train(ij,h+2,i+aa)=cord(3);
    train(ij,h+2,i+aa)=train(ij,h+2,i+aa);
    train(ij,h+3,i+aa)=pro(1,cord(1),cord(2),cord(3))/83;
    train(ij,h+4,i+aa)=pro(2,cord(1),cord(2),cord(3))/83;
    train(ij,h+5,i+aa)=pro(3,cord(1),cord(2),cord(3))/83;
    train(ij,h+6,i+aa)=pro(4,cord(1),cord(2),cord(3))/83;
    train(ij,h+7,i+aa)=pro(5,cord(1),cord(2),cord(3))/83;
%     for div=130:156
%         train(ij,div,i+aa)=train(ij,div,i+aa)/121;
%     end
    i=i+1;
    end
        end
    end
end
end
