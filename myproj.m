 images = loadMNISTImages('train-images.idx3-ubyte');
labels = loadMNISTLabels('train-labels.idx1-ubyte');
timages = loadMNISTImages('t10k-images.idx3-ubyte');
tlabels = loadMNISTLabels('t10k-labels.idx1-ubyte');

for i=1:784
    for j=1:60000
    img(j,i)=images(i,j);
    end
end

for i=1:784
    for j=1:10000
    timg(j,i)=timages(i,j);
    end
end

%y=timg(7,:);
%[idx,dist]=knnsearch(img,y,'k',4,'distance','euclidean');
%l=labels(idx);
%tlabels(1);

 %mdl1=fitcknn(img,labels,'NumNeighbors',4);
%l1=predict(mdl1,y);

%[idx,dist]=knnsearch(img,y,'k',200,'distance','euclidean');
%l=labels(idx);

%[idx,dist]=knnsearch(img,y,'k',2000,'distance','euclidean');
%l=labels(idx);

%mdl1=fitcknn(img,labels,'NumNeighbors',200);
%l=
%for i=1:10000 
 %   y=timg(i,:);
  % pl(i)=predict(mdl1,y);
%end

%took lot of time didnt see o/p

%try for shorter sample

%[trainind,testind]=dividerand(10000,500,9500);
%s=timg(trainind,:);
%sl=tlabels(trainind,:);
%for i=1:500 
 
%   y=s(i,:);
 %  pl(i)=predict(mdl1,y);
%end
%con=confusionmat(pl,sl);
%con =

    %40     0     3     0     1     1     0     0     2     3
%     0    59     3     0     1     1     0     0     0     0
 %    0     0    51     0     0     0     0     0     0     0
  %   0     0     0    50     0     1     0     0     2     1
   %  0     0     0     0    43     0     1     0     0     0
    % 0     0     0     0     0    39     0     0     0     0
     %1     0     0     0     0     1    55     0     1     0
 %    0     0     3     1     0     0     0    40     0     0
  %   0     0     0     0     0     0     0     0    38     0
   %  0     0     0     0     4     1     0     0     2    51
%mdl1=fitcknn(img,labels,'NumNeighbors',2000);
%con =

%    38     0     4     0     0     2     0     0     1     2
 %    0    59    14     1     2     6     3     3     4     3
  %   0     0    33     0     0     0     0     0     0     0
   %  0     0     3    46     0     3     0     0     4     1
    % 0     0     1     0    39     0     3     0     0     1
     %1     0     0     0     0    28     0     0     0     1
 %    2     0     0     0     1     1    50     0     0     0
  %   0     0     3     2     0     1     0    36     0     2
   %  0     0     2     0     0     0     0     0    33     0
   %  0     0     0     2     7     3     0     1     3    45
     
     
%c0=0;
%c1=0;
%c2=0;
%c3=0;
%c4=0;
%c5=0;
%c6=0;
%c7=0;
%c8=0;
%c9=0;
%for i=1:60000
 %   if(labels(i)==0)
  %      c0=c0+1;
   % elseif(labels(i)==1)
    %    c1=c1+1;
     %elseif(labels(i)==2)
      %  c2=c2+1;
       % elseif(labels(i)==3)
        %c3=c3+1;
        %elseif(labels(i)==4)
        %c4=c4+1;
        %elseif(labels(i)==5)
        %c5=c5+1;
        %elseif(labels(i)==6)
        %c6=c6+1;
        %elseif(labels(i)==7)
        %c7=c7+1; 
        %elseif(labels(i)==8)
        %c8=c8+1;
        %elseif(labels(i)==9)
        %c9=c9+1;
    %end
%end

%c0=5923
%c1=6742
%c2=5958
%c3=6131
%c4=5842
%c5=5421
%c6=5918
%c7=6265
%c8=5851
%c9=5949

 %euclidean distance %
 
%D  = sqrt(sum((G - G2) .^ 2));
% y=timg(7,:);
 %w=img(18280,:);
 %dist bet these 2 shud be 5.1087, now checking
  %d= sqrt(sum((y - w) .^ 2));
  
  
  
  %%%ACTUAL KNN IMPLEMENTATION STARTS HERE.
  
  
  count_classlabel=zeros(10,1);
  k=3;
  for i=1:10000
      for j=1:60000
        test_point=timg(i,:);
        train_point=img(j,:);
        euclid_dist= sqrt(sum((test_point - train_point) .^ 2));
        dis(j,:)=[j euclid_dist];
      end
      sorted_dist=sortrows(dis,2);
      count_classlabel=zeros(10,1);
      for j=1:k
          classlabel(j)=labels(sorted_dist(j,1));
            if(classlabel(j)==0)
                count_classlabel(1,1)=count_classlabel(1,1) + 1;
            elseif(classlabel(j)==1)
                count_classlabel(2,1)=count_classlabel(2,1) + 1;
                elseif(classlabel(j)==2)
                count_classlabel(3,1)=count_classlabel(3,1) + 1;
                elseif(classlabel(j)==3)
                count_classlabel(4,1)=count_classlabel(4,1) + 1;
                elseif(classlabel(j)==4)
                count_classlabel(5,1)=count_classlabel(5,1) + 1;
                elseif(classlabel(j)==5)
                count_classlabel(6,1)=count_classlabel(6,1) + 1;
                elseif(classlabel(j)==6)
                count_classlabel(7,1)=count_classlabel(7,1) + 1;
                elseif(classlabel(j)==7)
                count_classlabel(8,1)=count_classlabel(8,1) + 1;
                elseif(classlabel(j)==8)
                count_classlabel(9,1)=count_classlabel(9,1) + 1;
                elseif(classlabel(j)==9)
                count_classlabel(10,1)=count_classlabel(10,1) + 1;
            end
      end
      [val ind]=max(count_classlabel);
      %can include weight factor w=1/d^2?
      predictlabel(i)=ind-1;
  end
  plk3=predictlabel;
  plk3
  confusion=confusionmat(tlabels,plk3)
  p1=0;
  p2=0;
  for i= 1:10
       tp(i)=confusion(i,i);
       j=i;
          fp(i)=0;
          fn(i)=0;
          for r=j+1:10
          fp(i)=fp(i)+confusion(r,i);
          p1(i)=(tp(i)/(tp(i)+fp(i)));
          fn(i)=fn(i)+confusion(i,r);
          p2(i)=(tp(i)/(tp(i)+fn(i)));
          end
  end
      accuracy=(sum(tp)/10000)*100
      precision=(sum(p1)/10)*100
      recall=(sum(p2)/10)*100
  %confusion for k=3, 10000 test data
  
  %confusion =

  %Columns 1 through 8
%
 %        974           1           1           0           0           1           2           1
  %         0        1133           2           0           0           0           0           0
   %       10           9         996           2           0           0           0          13
   %        0           2           4         976           1          13           1           7
    %       1           6           0           0         950           0           4           2
     %      6           1           0          11           2         859           5           1
      %     5           3           0           0           3           3         944           0
       %    0          21           5           0           1           0           0         991
        %   8           2           4          16           8          11           3           4
         %  4           5           2           8           9           2           1           8

  %Columns 9 through 10

   %        0           0
    %       0           0
     %      2           0
      %     3           3
       %    0          19
        %   3           4
         %  0           0
          % 0          10
      %   914           4
       %    2         968
%tp

%tp =

%  Columns 1 through 8

 %        974        1133         996         976         950         859         944         991

  %Columns 9 through 10

   %      914         968

%fp

%fp =

 %   34    49    15    35    23    16     4    12     2     0

%fn

%fn =

 %    6     2    17    28    25    13     0    10     4     0
  
 %accuracy =

%97.0500


%precision =

 %  88.1507

%recall=(sum(p2)/10)*100

%recall =

 %  88.9255

  
  %SAMPLE
   %test_point=timg(4,:);
   %actlabl=tlabels(1:10000);
   %act(1,1:10000)=tlabels;
   %con=confusionmat(act,plk3)
  
   %pl(1:100,1)=predictlabel(1,1:100);
   %for i=1:1699
   
    %pl(i,1)=predictlabel(1,i);
    %end
    
   
     %corrected code k=200,100 test
%     con =

%     8     0     0     0     0     0     0     0     0     0
 %    0    14     0     0     0     0     0     0     0     0
 %    0     2     5     0     0     0     0     1     0     0
  %   0     0     0    11     0     0     0     0     0     0
   %  0     0     0     0    13     0     1     0     0     0
    % 0     1     0     0     0     6     0     0     0     0
    % 0     0     0     0     0     0    10     0     0     0
     %0     1     0     0     0     0     0    13     0     1
%     0     0     0     0     0     0     0     0     2     0
 %    0     0     0     0     0     0     0     1     0    10

     %k=10,100 test
%     con =

 %    8     0     0     0     0     0     0     0     0     0
%     0    14     0     0     0     0     0     0     0     0
 %    0     1     6     0     0     0     0     1     0     0
  %   0     0     0    11     0     0     0     0     0     0
   %  1     0     0     0    13     0     0     0     0     0
    % 0     0     0     0     0     7     0     0     0     0
    % 0     0     0     0     0     0    10     0     0     0
     %0     0     0     0     0     0     0    15     0     0
     %0     0     1     0     0     0     0     0     1     0
     %0     0     0     0     0     0     0     0     0    11
     
     %k=3 , 100 test
     %con =

%     8     0     0     0     0     0     0     0     0     0
 %    0    14     0     0     0     0     0     0     0     0
  %   0     0     8     0     0     0     0     0     0     0
   %  0     0     0    11     0     0     0     0     0     0
    % 0     0     0     0    13     0     0     0     0     1
     %0     0     0     0     0     7     0     0     0     0
%     0     0     0     0     0     0    10     0     0     0
 %    0     0     0     0     0     0     0    15     0     0
  %   0     0     0     0     0     0     0     0     2     0
   %  0     0     0     0     0     0     0     0     0    11
     
     %k=1, 100 test
    % con =

%     8     0     0     0     0     0     0     0     0     0
 %    0    14     0     0     0     0     0     0     0     0
  %   0     0     8     0     0     0     0     0     0     0
   %  0     0     0    11     0     0     0     0     0     0
    % 0     0     0     0    14     0     0     0     0     0
     %0     0     0     0     0     7     0     0     0     0
%     0     0     0     0     0     0    10     0     0     0
 %    0     0     0     0     0     0     0    15     0     0
  %   0     0     0     0     0     0     0     0     2     0
   %  0     0     0     0     0     0     0     0     0    11

     %k=2,100 test
    % con =

%     8     0     0     0     0     0     0     0     0     0
 %    0    14     0     0     0     0     0     0     0     0
  %   0     0     8     0     0     0     0     0     0     0
   %  0     0     0    11     0     0     0     0     0     0
    % 1     0     0     0    13     0     0     0     0     0
     %0     0     0     0     0     7     0     0     0     0
%     0     0     0     0     0     0    10     0     0     0
 %    0     0     0     0     0     0     0    15     0     0
  %   0     0     1     0     0     0     0     0     1     0
   %  0     0     0     0     1     0     0     0     0    10

     %k=3, test 8000
%     con =

%   769     0     1     0     0     1     1     1     0     0
 %    0   903     2     0     0     0     0     0     0     0
 %    6     6   809     2     0     0     0    11     0     0
  %   0     2     4   772     1    11     1     7     2     3
   %  0     5     0     0   761     0     4     1     0    17
    % 4     0     0    10     2   695     4     1     3     4
     %5     3     0     0     3     3   742     0     0     0
 %    0    21     2     0     1     0     0   779     0    10
  %   8     2     4    16     7     7     3     4   732     4
   %  4     5     2     8     8     2     1     7     2   779
   
   
   
   %%%%SVM
   
  
     
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
       % b=cell(5,1);
        %for i=1:5
         %   b{i}=[1 2 3];
        %end
        %b
        %a=cell2mat(b{2}); dont need%
        

%SVM

%t = templateSVM('KernelFunction','gaussian');% 
%Mdl = fitcecoc(img,labels,'Learners',t);%
%Not working%

%[trainind,testind]=dividerand(60000,500,59500);
%sam=img(trainind,:);
%saml=labels(trainind,:);
%working%
%Mdl = fitcecoc(sam,saml);
%Mdl = fitcecoc(sam,saml);
%y=timg(5,:);
%pl=predict(Mdl,y)

%pl =

 %    4
%tlabels(5)

%ans =

     %4 %

%[trainind,testind]=dividerand(10000,100,9900);
%s=timg(trainind,:);
%sl=tlabels(trainind,:);

%for i=1:100
 %   p(i)=predict(Mdl,s(i,:));
%end
%c=confusionmat(p,sl);
%c =

    %10     0     0     0     0     0     0     0     0     0
     %0    13     1     0     0     0     1     1     0     0
     %0     0     4     0     0     0     2     0     0     0
     %0     0     0    11     0     0     0     0     0     1
     %0     0     0     0     5     0     3     0     0     0
     %0     0     0     0     0     9     1     0     3     2
     %0     0     0     0     0     2     6     0     0     0
     %0     0     0     0     0     0     0     7     0     1
     %0     0     0     0     0     0     0     0     6     0
     %0     0     0     1     1     0     0     0     0     9
     
 %    which fitcknn
%C:\Program Files\MATLAB\R2015a\toolbox\stats\classreg\fitcknn.m




    