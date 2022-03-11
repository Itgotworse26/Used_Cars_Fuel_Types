# Final_Project
Final Group Assignment for Module 20

## Background
The purpose of this assignment is to use a machine learning model to predict the type of fuel a car from a used car database will use. By using data from www.cardekho.com, we will determine the fuel type of a used car sold in India. By predicting whether a car will be diesel, petrol, or other, we can observe if 


## Machine Learning (Triangle Role)
I plan on experimenting with a variety of different machine learning models to see what their different results are. 

The first model I hope to use is the Easy Ensemble AdaBoost Classifier. In a previous project to classify whether a credit loan application was high-risk or low-risk, a classifier that used the Easy Ensemble AdaBoost Classifier achieved a balanced accuracy score of about 93.17%. I hope that the further use of this model leads to a similar accuracy on our current project.

To quote the scikit [description](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.AdaBoostClassifier.html) of the EEAC:

"An AdaBoost classifier is a meta-estimator that begins by fitting a classifier on the original dataset and then fits additional copies of the classifier on the same dataset but where the weights of incorrectly classified instances are adjusted such that subsequent classifiers focus more on difficult cases."

The next model I will use is the Balanced Random Forest Classifier. Even though it only achieved a balanced accuracy scroe of 78.85, I still plan on using it to compare it against the Easy Ensemble AdaBoost Classifier.

To explain a little about how it works, imbalanced-learn.org [describes](https://imbalanced-learn.org/stable/references/generated/imblearn.ensemble.BalancedRandomForestClassifier.html) the BRFC as a model that:

"randomly under-samples each boostrap sample to balance it."

The plan is to use the preferred model to predict how many vehicles of each fuel types will be sold. With this, we can determine if the number of diesel, petrol, or other vehicles will increase or decrease. 

