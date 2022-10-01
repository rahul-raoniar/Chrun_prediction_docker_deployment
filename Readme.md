# <font color="#FFC300 ">Churn prediction model deployment</font>

### <font color="#FFB74D">Project aim:</font> Creating a churn prediction model (binary classification) and deploying it using docker container.

<font color="#FFB74D">Data Source:</font> https://www.kaggle.com/datasets/blastchar/telco-customer-churn 

<font color="#FFB74D">Project Requirements:</font> python 3.9, pandas, numpy, scikit-learn. docker

The project involved the following steps:

* Downloading, loading, cleaning and preparing data for analysis
* Performing exploratory data analysis
* Performing a feature importance analysis using the concept of `Risk Ratio`
* Performing `correlation` analysis for feature selection
* Performing `feature engineering` which involves `One-Hot Encoding` for categorical variables
* Fitting and training a `logistic regession` binary classification model using `scikit-learn's LogisticRegression` class
* `Model evaluation` using basic evaluation matric such as `accuracy`
* Identifying `cut-off` for achieving `maximum accuracy`
* Computing `auc-roc` (due to target class imbalance)
* Used `pickle` library to save and load the model
* Created a basic flask app `churn-serving.py` for predicting churn based on single observation input
* Used `pipenv` to manage project dependencies. This will create `Pipenv` and `Pipenv.lock` files. It manages exact depndencies that we need to run the application.
* Installed `gunicorn` using pipenv which is a production ready `WSGI server tool`. It can handle http request without any issues.
* Installed `docker` for creating and running a docker container
* Created a `Dockerfile` and added instructions
* Built the `churn-prediction` docker container
* `Run` the `docker container` and tests to check for model prediction

$$\{'churn': False\,,\, 'churn-probability': 0.0596\}$$


