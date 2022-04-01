# Final_Project
Final Group Assignment for Module 20

## Background
The purpose of this assignment is to use a machine learning model to predict the type of fuel a car from a used car database will use. By using data from www.cardekho.com, we will determine the fuel type of a used car sold in India. By predicting whether a car will be diesel, petrol, or other, we can observe what the fuel types of different vehicles are and whether it will affect their numbers in the future.  


## Presentation
The link to our presentation can be found [here](https://docs.google.com/presentation/d/1l1r_11tTvZuUeoXyJWqmmhsQXKu7Xm3TU2VSQZbhsMw/edit?usp=sharing).


## Tablueau Public Story
The link to our Tableau Public story can be found [here](https://public.tableau.com/shared/JMDF3Y6DX?:display_count=n&:origin=viz_share_link).


## Data Analysis Phase
During our analysis, we made a couple of observations from the car_clean.csv file:

![1_Count_by_Fuel_Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/1_Count_by_Fuel_Type.png)

![2_Count_by_Fuel_Type_Pie](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/2_Count_by_Fuel_Type_Pie.png)

* Diesel cars are the most commonly sold on cardekho, followed by petrol, and then other.


![3_Mileage_by_Fuel_Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/3_Mileage_by_Fuel_Type.png)

* A petrol car has the best mileage while the low end mileage is shared by a diesel and petrol vehicle.


![4_Median_Mileage_by_Fuel_Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/4_Median_Mileage_by_Fuel_Type.png)

* Other fuel types have the best median mileage while petrol cars have the worst median mileage.


![5_Selling_Price_by_Fuel_Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/5_Selling_Price_by_Fuel_Type.png)

![6_Selling_Price_vs._Year_and_Fuel_Types](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/6_Selling_Price_vs._Year_and_Fuel_Types.png)

* A petrol car sold for the most money while a diesel car sold for the least money.


![7_Median_Selling_Price_by_Fuel_Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/5_Median_Selling%20Price_by_Fuel_Type.png)

* Diesel cars have the best median selling price while petrol cars have the worst median mileage.


![8_Fuel_Types_by_Year](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/8_Fuel_Types_by_Year.png)

* Diesel cars sold are most commonly represented in the model years  2011-2019. Petrol cars sold are most commonly represented in the model years 2016-2019. 'Other' vehicles only go above 10 examples in the model years 2010 and 2012.


![9_Fuel_Type_by_Manufacturer](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/9_Fuel_Type_by_Manufacturer.png)

* Maruti is the most prominent manufacturer of sold vehicles. Ashok meanwhile only has 1 diesel car and Opel only has one petrol car. Some manufacturer only have examples of one fuel type while others have examples of all three fuel types.


## Machine Learning Model
We plan on experimenting with a variety of different machine learning models to see what their different results are. The plan is to use fuel type as the target and use the cleaned up data as the features.

The first model we hope to use is the Easy Ensemble AdaBoost Classifier. In a previous project to classify whether a credit loan application was high-risk or low-risk, a classifier that used the Easy Ensemble AdaBoost Classifier achieved a balanced accuracy score of about 93.17%. We hope that the further use of this model leads to a similar accuracy on our current project.

To quote the scikit description of the EEAC:

> "An AdaBoost classifier is a meta-estimator that begins by fitting a classifier on the original dataset and then fits additional copies of the classifier on the same dataset but where the weights of incorrectly classified instances are adjusted such that subsequent classifiers focus more on difficult cases."

The next model we will use is the Balanced Random Forest Classifier. Even though it only achieved a balanced accuracy scroe of 78.85, we still plan on using it to compare it against the Easy Ensemble AdaBoost Classifier.

To explain a little about how it works, imbalanced-learn.org describes the BRFC as a model that:

> "randomly under-samples each boostrap sample to balance it."

The original plan was to use the preferred model to predict how many vehicles of each fuel types will be sold. With this, we can determine if the sale of diesel, petrol, or other vehicles will increase or decrease. We can also try to answer whether diesel or petrol vehicles have more mileage at the time of selling.

However, after some feedback about the differences between unsupervised machine learning (i.e: the models stated above) and supervised machine learning, our plan shifted; instead of comparing the three above unsupervised machine learning models, we would instead use a deep-learning neural network.

To explain what a deep-learning neural network is, IBM explains here that:

> "Neural networks, also known as artificial neural networks (ANNs) or simulated neural networks (SNNs), are a subset of machine learning and are at the heart of deep learning algorithms. Their name and structure are inspired by the human brain, mimicking the way that biological neurons signal to one another."

When we created our OneHotEncoder instance and fitted and transformed the OneHotEncoder using the categorical variable list, it split our "fuel" into three different columns; "fuel_Diesel, "fuel_Other", and "fuel_Petrol". As a result, we had to repeat the process of splitting our preprocessed data into our features and target arrays three different times; one for each fuel type, with the fuel types being our targets.

As a result, our targets are the "fuel_Diesel, "fuel_Other", and "fuel_Petrol" columns while the features are every other column in the car_clean_df dataframme after merging the one-hot encoded features. 

Even though our model is functioning, we still feared that the data was too cleaned up, and as a result, it overfitted. Our model_accuracy routinely ran at around 99%; while it meant our model worked, it might not be predicting the trends in fuel types as accurately as we hoped.

To explain what overfitting is, IBM [explains](https://www.ibm.com/cloud/learn/overfitting) that it

> "occurs when a statistical model fits exactly against its training data. When this happens, the algorithm unfortunately cannot perform accurately against unseen data, defeating its purpose.

There is a possibility that the data we used is fitted exactly against the training data, which makes it inaccurate against unseen data, making its ability to predict the future values difficult.

Our results looked like this:

* Diesel Model
![Diesel_Model](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/Diesel_Model.JPG)


* Diesel Model Accuracy
![Diesel_Model_Accuracy](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/Diesel_Model_Accuracy.JPG)


* Other Model
![Other_Model](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/Other_Model.JPG)

* Other Model Accuracy
![Other_Model_Accuracy](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/Other_Model_Accuracy.JPG)


* Petrol Model
![Petrol_Model](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/Petrol_Model.JPG)

* Petrol Model Accuracy
![Petrol_Model_Accuracy](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/Alvin_Triangle_Machine_Learning/Resources/Petrol_Model_Accuracy.JPG)