FROM python:3.8.12-slim    
                                                 # First install the python 3.8, the slim version have less size
ENV PYTHONUNBUFFERED=TRUE

RUN pip install pipenv 

WORKDIR /app   

COPY ["Pipfile", "Pipfile.lock", "./"] 

RUN pipenv install --deploy --system && \
rm -rf /root/.cache    

COPY ["*.py", "churn-model.bin", "./"]  

EXPOSE 9696         
                                                       
ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:9696", "churn_serving:app"]     