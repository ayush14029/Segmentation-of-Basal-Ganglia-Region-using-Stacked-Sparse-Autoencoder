aa=0;
i=1;
aa=0

for l=1:10 
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
                T(1,i+aa)=1;
            c1=c1+1;
            end
        elseif(nii(cord(1),cord(2),cord(3))==12 || nii(cord(1),cord(2),cord(3))==51)
            if(c2<501)
                flag=1;
            T(2,i+aa)=1;
            c2=c2+1;
            end
        elseif(nii(cord(1),cord(2),cord(3))==13 || nii(cord(1),cord(2),cord(3))==52)
            if(c3<501)
                flag=1;
            T(3,i+aa)=1;
            c3=c3+1;
            end
        elseif(nii(cord(1),cord(2),cord(3))==26 || nii(cord(1),cord(2),cord(3))==58)
            if(c4<501)
                flag=1;
            T(4,i+aa)=1;
            c4=c4+1;
            end
        else
            if(c5<501)
            flag=1;
            T(5,i+aa)=1;
            c5=c5+1;
            end
        end
    if(flag==1)
    h=1;
    for j=cord(1)-5:cord(1)+5
        for k=cord(2)-5:cord(2)+5
            if(j>0 && j<74 && k>0 && k<40)
                  train(h,i+aa)=nii2(j,k,cord(3));
%                 train(h,i+aa)=train(h,i+aa);
            if(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<3)
                train(150,i+aa)=train(150,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>3 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<6)
                train(130,i+aa)=train(130,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>6 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<9)
                train(131,i+aa)=train(131,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>9 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<12)
                train(132,i+aa)=train(132,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>12 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<15)
                train(133,i+aa)=train(133,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>15 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<18)
                train(134,i+aa)=train(134,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>18 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<21)
                train(135,i+aa)=train(135,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>21 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<24)
                train(136,i+aa)=train(136,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>24 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<27)
                train(137,i+aa)=train(137,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>27 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<30)
                train(138,i+aa)=train(138,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>30 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<33)
                train(139,i+aa)=train(139,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>33 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<36)
                train(140,i+aa)=train(140,i+aa)+1;
            elseif(pro(1, j, k,cord( 3))>36 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<39)
                train(141,i+aa)=train(141,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>39 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<42)
                train(142,i+aa)=train(142,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>42 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<45)
                train(143,i+aa)=train(143,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>45 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<48)
                train(144,i+aa)=train(144,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>48 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<51)
                train(145,i+aa)=train(145,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>51 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<54)
                train(146,i+aa)=train(146,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>54 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<57)
                train(147,i+aa)=train(147,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>57 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<60)
                train(148,i+aa)=train(148,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>60 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<63)
                train(149,i+aa)=train(149,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>63 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<66)
                train(151,i+aa)=train(151,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>66 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<69)
                train(152,i+aa)=train(152,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>69 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<72)
                train(153,i+aa)=train(153,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>72 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<75)
                train(154,i+aa)=train(154,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>75 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<78)
                train(155,i+aa)=train(155,i+aa)+1;
            elseif(pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))>78 &&pro(2, j, k,cord(3))+pro(3,j, k,cord(3))+pro(4, j, k,cord(3))<83)
                train(156,i+aa)=train(156,i+aa)+1;
            end
           % else
                 %train_noise(h,i+aa)=0;
            end
            h=h+1;
        end
    end
    train(h,i+aa)=cord(1);
    train(h,i+aa)=train(h,i+aa);
    train(h+1,i+aa)=cord(2);
    train(h+1,i+aa)=train(h+1,i+aa);
    train(h+2,i+aa)=cord(3);
    train(h+2,i+aa)=train(h+2,i+aa);
    train(h+3,i+aa)=pro(1,cord(1),cord(2),cord(3))/83;
    train(h+4,i+aa)=pro(2,cord(1),cord(2),cord(3))/83;
    train(h+5,i+aa)=pro(3,cord(1),cord(2),cord(3))/83;
    train(h+6,i+aa)=pro(4,cord(1),cord(2),cord(3))/83;
    train(h+7,i+aa)=pro(5,cord(1),cord(2),cord(3))/83;
%     for div=130:156
%         train(div,i+aa)=train(div,i+aa)/121;
%     end
    i=i+1;
    end
        end
    end
    end
    i
