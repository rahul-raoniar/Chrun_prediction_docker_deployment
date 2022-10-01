# Churn prediction model deployment 

### Project aim: Creating a churn prediction model (binary classification) and deploy using docker container.

`Data Source:` https://www.kaggle.com/datasets/blastchar/telco-customer-churn 

`Project Requirements:` python 3.9, pandas, numpy, scikit-learn. docker

The project involved the following steps:

* Downloading, loading, cleaning and preparing data for analysis
* Performing exploratory data analysis
* Performing a feature importance analysis using the concept of `Risk Ratio`
* Performing `correlation` analysis for feature selection
* Conduction a `feature engineering` which involves `One-Hot Encoding` for categorical variables
* Fitting and training a `logistic regession` binary classification model using `scikit-learn's LogisticRegression class`
* `Model evaluation` using basic evaluation matric such as `accuracy`
* Identifying `cut-off` for achieving `maximum accuracy`
* Computing `auc-roc` (due target class imbalance)
* Used pickle to save and load the model
* Created a basic flask app `churn-serving.py` for predicting churn based on single observation input
* Used pipenv to manage dependencies. This will create `Pipenv` and `Pipenv.lock` files. It manages exact depndencies that we need to run the application.
* Installed `gunicorn` using pipenv which is a production ready `WSGI server tool`. It can handle http request without any issues.
* Installed `docker` for creating and running a docker container
* Created a `Dockerfile` and added instructions
* Built the `churn-prediction` docker container
* `Run` the `docker container` and run tests to check for model prediction

$${'churn': False, 'churn-probability': 0.0596}$$


