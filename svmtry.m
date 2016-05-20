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

var=0.5;
randind=randi([0,60000],[400,1]);
labels_random=labels(randind);
img_rand=img(randind,:);
%labels_rand=labels(1:200,:);
%img_rand=img(1:20000,:);
randind_test=randi([0,10000],[600,1]);
tlabels_random=tlabels(randind_test);
tlabels_rand=tlabels_random;
timg_rand=timg(randind_test,:);
for i=1:length(labels_random)
    for j=1:length(tlabels_random)
        diff=img_rand(i,:)-timg_rand(j,:);
        squared_diff=dot(diff,diff);
        kernel(i,j)=exp(squared_diff*(-1)/(2*var*var));
    end
end
eps=0.00005;
labels_rand=labels_random;
for i=1:length(labels_random)
 if labels_random(i)==0
        labels_rand(i)=1;
    else
        labels_rand(i)=-1;
    end
end    
train=img_rand;
trainclasses=labels_rand;
for i=1:length(tlabels_random)
    if tlabels_random(i)==0
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end

test=timg_rand;
testclasses=tlabels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp,alpha]=smo(test,testclasses,train,trainclasses,kernel,eps);
%for var=0.5; loop=1000; traindata=200; fn=5; fp=166; tn=183; tp=46;
for i=1:length(tlabels_random)
    if tlabels_random(i)==1
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=tlabels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp,alpha]=smo(test,testclasses,train,trainclasses,kernel,eps);
%for var=0.5; loop=1000; traindata=200; fn=37; fp=209; tn=151; tp=3
for i=1:length(tlabels_random)
    if tlabels_random(i)==2
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=tlabels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);
%for var=0.5; loop=1000; traindata=200; fn=400; fp=0; tn=0; tp=0
for i=1:length(tlabels_random)
    if tlabels_random(i)==3
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=talbels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);
for i=1:length(tlabels_random)
    if tlabels_random(i)==4
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=talbels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);
for i=1:length(tlabels_random)
    if tlabels_random(i)==5
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=talbels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);
for i=1:length(tlabels_random)
    if tlabels_random(i)==6
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=talbels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);
for i=1:length(tlabels_random)
    if tlabels_random(i)==7
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=talbels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);
for i=1:length(tlabels_random)
    if tlabels_random(i)==8
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=talbels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);
for i=1:length(tlabels_random)
    if tlabels_random(i)==9
        tlabels_rand(i)=1;
    else
        tlabels_rand(i)=-1;
    end
end
test=timg_rand;
testclasses=talbels_rand;
[weight, bias, tp, fp,alpha,tn,fn]=mysmo(test,testclasses,train,trainclasses,kernel,eps);
%[weight, bias, tp, fp]=smo(test,testclasses,train,trainclasses,kernel,eps);







postrain0=[];
poslabel0=[];
postrain1=[];
poslabel1=[];
postrain2=[];
poslabel2=[];
postrain3=[];
poslabel3=[];
postrain4=[];
poslabel4=[];
postrain5=[];
poslabel5=[];
postrain6=[];
poslabel6=[];
postrain7=[];
poslabel7=[];
postrain8=[];
poslabel8=[];
postrain9=[];
poslabel9=[];
negtrain0=[];
neglabel0=[];
negtrain1=[];
neglabel1=[];
negtrain2=[];
neglabel2=[];
negtrain3=[];
neglabel3=[];
negtrain4=[];
neglabel4=[];
negtrain5=[];
neglabel5=[];
negtrain6=[];
neglabel6=[];
negtrain7=[];
neglabel7=[];
negtrain8=[];
neglabel8=[];
negtrain9=[];
neglabel9=[];
for i =1:length(labels)
  
    if (labels(i)==0)
        trlabel(i)=1;
        postrain0=[postrain0; img(i,:)];
        poslabel0=[poslabel0; labels(i)];
    else
        trlabel(i)=-1;
        negtrain0=[negtrain0; img(i,:)];
        neglabel0=[neglabel0; labels(i)];
    end
    if (labels(i)==1)
        trlabel(i)=1;
        postrain1=[postrain1; img(i,:)];
        poslabel1=[poslabel1; labels(i)];
    else
        trlabel(i)=-1;
        negtrain1=[negtrain1; img(i,:)];
        neglabel1=[neglabel1; labels(i)];
    end
    if (labels(i)==2)
        trlabel(i)=1;
        postrain2=[postrain2; img(i,:)];
        poslabel2=[poslabel2; labels(i)];
    else
        trlabel(i)=-1;
        negtrain2=[negtrain2; img(i,:)];
        neglabel2=[neglabel2; labels(i)];
    end
    if (labels(i)==3)
        trlabel(i)=1;
        postrain3=[postrain3; img(i,:)];
        poslabel3=[poslabel3; labels(i)];
    else
        trlabel(i)=-1;
        negtrain3=[negtrain3; img(i,:)];
        neglabel3=[neglabel3; labels(i)];
    end
    if (labels(i)==4)
        trlabel(i)=1;
        postrain4=[postrain4; img(i,:)];
        poslabel4=[poslabel4; labels(i)];
    else
        trlabel(i)=-1;
        negtrain4=[negtrain4; img(i,:)];
        neglabel4=[neglabel4; labels(i)];
    end
    if (labels(i)==5)
        trlabel(i)=1;
        postrain5=[postrain5; img(i,:)];
        poslabel5=[poslabel5; labels(i)];
    else
        trlabel(i)=-1;
        negtrain5=[negtrain5; img(i,:)];
        neglabel5=[neglabel5; labels(i)];
    end
    if (labels(i)==6)
        trlabel(i)=1;
        postrain6=[postrain6; img(i,:)];
        poslabel6=[poslabel6; labels(i)];
    else
        trlabel(i)=-1;
        negtrain6=[negtrain6; img(i,:)];
        neglabel6=[neglabel6; labels(i)];
    end
    if (labels(i)==7)
        trlabel(i)=1;
        postrain7=[postrain7; img(i,:)];
        poslabel7=[poslabel7; labels(i)];
    else
        trlabel(i)=-1;
        negtrain7=[negtrain7; img(i,:)];
        neglabel7=[neglabel7; labels(i)];
    end
    if (labels(i)==8)
        trlabel(i)=1;
        postrain8=[postrain8; img(i,:)];
        poslabel8=[poslabel8; labels(i)];
    else
        trlabel(i)=-1;
        negtrain8=[negtrain8; img(i,:)];
        neglabel8=[neglabel8; labels(i)];
    end
    if (labels(i)==9)
        trlabel(i)=1;
        postrain9=[postrain9; img(i,:)];
        poslabel9=[poslabel9; labels(i)];
    else
        trlabel(i)=-1;
        negtrain9=[negtrain9; img(i,:)];
        neglabel9=[neglabel9; labels(i)];
    end
end
trimg=img;
trlabel=labels;
tstimg=timg;
tstlabel=tlabels;
