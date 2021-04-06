FROM ubuntu
RUN apt-get -y upgrade && apt-get -y update

## Python 3.8
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

## Python Requirements
ADD . .
RUN pip3 install -r req.txt

## SQlite
RUN apt install -y sqlite3

## MLFlow Command
RUN ./remove_mlruns_db.sh
RUN python3 run_weather_forecast.py
CMD ./deploy_model.sh
#RUN ./make_predictions.sh
