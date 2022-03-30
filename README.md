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

![1 Count by Fuel Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/main/Resources/1%20Count%20by%20Fuel%20Type.png)

* Diesel cars are the most commonly sold on cardekho, followed by petrol, and then other.

![2 Mileage by Fuel Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/main/Resources/2%20Mileage%20by%20Fuel%20Type.png)

* A petrol car has the best mileage while the low end mileage is shared by a diesel and petrol vehicle.

![3 Median Mileage by Fuel Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/main/Resources/3%20Median%20Mileage%20by%20Fuel%20Type.png)

* Other fuel types have the best median mileage while petrol cars have the worst median mileage.

![4 Selling Price by Fuel Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/main/Resources/4%20Selling%20Price%20by%20Fuel%20Type.png)

* A petrol car sold for the most money while a diesel car sold for the least money.

![5 Median Selling Price by Fuel Type](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/main/Resources/5%20Median%20Selling%20Price%20by%20Fuel%20Type.png)

* Diesel cars have the best median selling price while petrol cars have the worst median mileage.

![6 Fuel Types by Year](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/main/Resources/6%20Fuel%20Types%20by%20Year.png)

* Diesel cars sold are most commonly represented in the model years  2011-2019. Petrol cars sold are most commonly represented in the model years 2016-2019. 'Other' vehicles only go above 10 examples in the model years 2010 and 2012.

![7 Fuel Type by Manufacturer](https://github.com/Itgotworse26/Used_Cars_Fuel_Types/blob/main/Resources/7%20Fuel%20Type%20by%20Manufacturer.png)

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

Even though our model is functioning, we still feared that the data was too cleaned up, and as a result, it overfitted. Our model_accuracy routinely ran at around 99%; while it meant our model worked, it might not be predicting the trends in fuel types as accurately as we hoped.