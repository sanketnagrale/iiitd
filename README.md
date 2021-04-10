# iiitd

## Submission for MIDAS@IIITD Internship Program

Name: Sanket Nagrale

## How to run this code

Required packages are given in requrements.txt file

- Main Packages required are:
```
tensorflow
numpy
matplotlib
```
The Notebooks provided have the Code.

There was not a lot of difference between pretrained model and scratch model accuracies in Task 2 and Task 3.

The main difference between datasets in Task 1 and 3 was that the images in Task 1 were labeled and images in Task 3 were unlabeled.

To label the images, First I collected all the images in one single folder, then I used a classifier, predicted the image category and separated the images based on that prediction.


## Accuracy and Loss Plot in Part 1

![](https://i.imgur.com/UE7quDR.png)       

Training Accuracy: 80%  
Validation Accuracy: 73%

## Accuracy and Loss Plot in Part 2
### Pretrained Network 
![](https://i.imgur.com/GCiGFnn.png)  

Training accuracy: 0.9692     

Validation accuracy: 0.9858  

### Model from Scratch 

![](https://i.imgur.com/9TBhVtk.png)  

Training accuracy: 0.9961   

Validation accuracy: 0.9876

## Accuracy and Loss Plot in Part 3
### Pretrained Network
![](https://i.imgur.com/MpTniMI.png)  

Training Accuracy: 0.9542    

Validation Accuracy: 0.9714  

Accuracy Calculated on Test Set is 96.28%.
### Model from Scratch
![](https://i.imgur.com/tVacBhf.png)  

Training Accuracy: 0.9715   

Validation Accuracy: 0.9660









