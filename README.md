# writtendigits_project

Project description:

This project classified the handwritten digits using the k – nearest neighbors (KNN) algorithm and Support Vector Machine (SVM) algorithm and compared their performance (accuracy, precision, recall).

MNIST dataset: The database contains 60,000 training images and 10,000 testing images. 

Processing on data:
Reshape : Changing each array of 28*28 pixels to an array of 784 columns.
Normalize : The pixel values usually are between 0 and 255. Normalizing it to be between 0 and 1 by dividing each pixel value by 255.

Performance:
Accuracy- is the fraction of correct classification
Precision- is the fraction of retrieved instances that are relevant
Recall- is the fraction of relevant instances that are retrieved

KNN performance:

For k=3 :
Accuracy = 97.05 %
Precision = 88.15 %
Recall = 88.92%

SVM Performance:
The amount of train data, variance and the iterations over which the lagrange multipliers get updated has an effect on the accuracy. 
Kernel 200*400, 400*600 –  similar accuracy.
With varied variance values, accuracy varied. We tried for var=0.3, 0.5 and 0.8. 
With different variance values, we got better accuracy for different values of iterations. 
As the data is huge, we had to restrict the train data and accuracy can be improved by taking more train data.
The best accuracy we were able to reach was 75.2% by taking var=0.8 and iterations as 400. 

Comparison of algorithms:
SVM – Because of its computational complexity, it is difficult to classify all the training data. 
As we can’t use more train data, accuracy is less.
KNN – It has better accuracy which is 97.5 where as SVM has 75.20% .
More importantly, KNN is less expensive than SVM.
We can conclude KNN is better than SVM.

