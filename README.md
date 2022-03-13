# Used_Cars_Fuel_Types
Final Group Assignment for Module 20

## Background
The purpose of this assignment is to use a machine learning model to predict the type of fuel a car from a used car database will use. By using data from www.cardekho.com, we will determine the fuel type of a used car sold in India. By predicting whether a car will be diesel, petrol, or other, we can observe what the fuel types of different vehicles are and whether it will affect their numbers in the future.  

Consumers are becoming more environmentally conscious and electric vehicles have become mainstream in recent. An electric car company like Tesla would be interested in learning whether the sale of petrol/diesel fueled-cars sales have been or will be falling in the Indian vehicle market, which could signal the potential growth of a new market.  


## Team Roles
* Square: Winnie Wang

* Triangle: Alvin Tran

* Circle: Jacob Nyamu

* X Role: Afreen Amina


## Data Resource
We sourced our data (CSV file) from a Kaggle dataset called [“Vehicle dataset”](https://www.kaggle.com/nehalbirla/vehicle-dataset-from-cardekho). We used the Car details v3.csv file. It is a list of used cars sold in India via cardekho. The datafields are as follows:

* name (Manufactuerer and model of vehicle)
* year (Model year)
* selling_price
* km_driven
* fuel
* seller_type (Whether the seller was an individual or dealer)
* transmission
* owner (Whether the owner was the first, second, or other owner)
* mileage
* engine


## Questions We Hope to Answer With the Data:
1. Has the sale of petrol/diesel increased or decreased?
2. Will the sale of petrol/diesel fueled cars increase or decrease?  
3. Do electric car companies have a market opportunity in India?
4. Whether diesel or petrol sells at a better price. 
5. Whether diesel or petrol have more mileage at the time of selling.


## Database
We plan on cleaning the data and then adding it to create a SQL database. Our provisional ERD can be seen [here](https://lucid.app/lucidchart/db00eca8-f242-4314-a285-84b4344fc61f/edit?invitationId=inv_490fedc4-bb98-41f8-acfb-adc7dffec027). 

We also have a provisional schema with two tables; Car_Details and Other_Cars_Details that both use car_id as a primary key, that we are planning to clean up and use. The current schema looks like this:

```
CREATE TABLE Cars_Details (	
     car_id VARCHAR(10) NOT NULL,
     name VARCHAR NOT NULL,
	 year int NOT NULL,
	 selling_price int NOT NULL,
	 fuel VARCHAR NOT NULL,
	 seller_type VARCHAR NOT NULL,
	 seats int NOT NULL,
     PRIMARY KEY (car_id)
);

CREATE TABLE Other_Cars_Details (
     car_id VARCHAR(10) NOT NULL,
     name VARCHAR NOT NULL,
	 km_driven int NOT NULL,
	 transmission VARCHAR NOT NULL,
	 owner VARCHAR NOT NULL,
	 mileage VARCHAR NOT NULL,
	 ngine VARCHAR NOT NULL,
	 max_power VARCHAR NOT NULL,	
	 torque VARCHAR NOT NULL,
     PRIMARY KEY(car_id)
);
```


## Machine Learning Model
We plan on experimenting with a variety of different machine learning models to see what their different results are. The plan is to use fuel type as the target and use the cleaned up data as the features. 

The first model we hope to use is the Easy Ensemble AdaBoost Classifier. In a previous project to classify whether a credit loan application was high-risk or low-risk, a classifier that used the Easy Ensemble AdaBoost Classifier achieved a balanced accuracy score of about 93.17%. We hope that the further use of this model leads to a similar accuracy on our current project.

To quote the scikit [description](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.AdaBoostClassifier.html) of the EEAC:

> "An AdaBoost classifier is a meta-estimator that begins by fitting a classifier on the original dataset and then fits additional copies of the classifier on the same dataset but where the weights of incorrectly classified instances are adjusted such that subsequent classifiers focus more on difficult cases."

The next model we will use is the Balanced Random Forest Classifier. Even though it only achieved a balanced accuracy scroe of 78.85, we still plan on using it to compare it against the Easy Ensemble AdaBoost Classifier.

To explain a little about how it works, imbalanced-learn.org [describes](https://imbalanced-learn.org/stable/references/generated/imblearn.ensemble.BalancedRandomForestClassifier.html) the BRFC as a model that:

> "randomly under-samples each boostrap sample to balance it."

The plan is to use the preferred model to predict how many vehicles of each fuel types will be sold. With this, we can determine if the sale of diesel, petrol, or other vehicles will increase or decrease. We can also try to answer whether diesel or petrol vehicles have more mileage at the time of selling.