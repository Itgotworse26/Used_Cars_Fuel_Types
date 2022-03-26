# Final_Project
Final Group Assignment for Module 20

## Background
The purpose of this assignment is to use a machine learning model to predict the type of fuel a car from a used car database will use. By using data from www.cardekho.com, we will determine the fuel type of a used car sold in India. By predicting whether a car will be diesel, petrol, or other, we can observe what the fuel types of different vehicles are and whether it will affect their numbers in the future.  


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

When we created our OneHotEncoder instance and fitted and transformed the OneHotEncoder using the categorical variable list, it split our "fuel" into three different columns; "fuel_Diesel, "fuel_Other", and "fuel_Petrol". As a result, we had to repeat the process of splitting our preprocessed data into our features and target arrays three different times; one for each fuel type.