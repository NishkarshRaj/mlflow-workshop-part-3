#!/usr/bin/env sh

echo "Deploying Production model name=PowerForecastingModel"

# Set enviorment variable for the tracking URL where the Model Registry is
export MLFLOW_TRACKING_URI=sqlite:///mlruns.db
# Serve the production model from the model registry
#python3 run_weather_forecast.py
mlflow models serve --model-uri models:/PowerForecastingModel/production --no-conda -p 3000
