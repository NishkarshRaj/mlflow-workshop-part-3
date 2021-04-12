FROM ubuntu
RUN apt-get -y upgrade && apt-get -y update

## Python 3.8
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

## Python Requirements
ADD . .
RUN pip3 install -r req.txt
#RUN pip3 install pymysql

## MLFlow Command
RUN python3 run_weather_forecast.py
EXPOSE 3000
CMD ./deploy_model.sh

