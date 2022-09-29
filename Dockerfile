# ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:9696", "churn_serving:app"]      # If we run the Docker image, we want our churn a


FROM python:3.8.12-slim                      # First install the python 3.8, the slim version have less size
ENV PYTHONUNBUFFERED=TRUE
RUN pip install pipenv                       # Install pipenv library in Docker 
WORKDIR /app                                 # we have created a directory in Docker named app and we're using it as work directory 
COPY ["Pipfile", "Pipfile.lock", "./"]       # Copy the Pip files into our working derectory 
RUN pipenv install --deploy --system         # install the pipenv dependecies we had from the project and deploy them 
COPY ["*.py", "churn-model.bin", "./"]       # Copy any python files and the model we had to the working directory of Docker 
EXPOSE 9696                                  # We need to expose the 9696 port because we're not able to communicate with Docker outside it
ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:9696", "churn_serving:app"] # If we run the Docker image, we want our churn app to be running