% Change the filenames if you have saved the files under different names
% On some platforms, the files might be saved as 
% train-images.idx3-ubyte / train-labels.idx1-ubyte

images = loadMNISTImages('train-images.idx3-ubyte');
labels = loadMNISTLabels('train-labels.idx1-ubyte');

% We are using display_network from the autoencoder code

display_network(images(:,1:100)); % Show the first 100 images
disp(labels(1:10));

image1=images(:,1)
label1=labels(1)