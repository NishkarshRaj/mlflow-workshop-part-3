## Readme to Run Projects Locally

* Install MLFlow framework

```
pip3 install mlflow
```

* Execute the main Python file to create Database

```
python3 []
```

* Go to MLFlow UI and Register the model and deploy to Production

```
mlflow ui --backend-store-uri sqlite:///mlruns.db # register model and deploy to production
```

* Deploy Model

```
./deploy_model.sh
```

* cURL Prediction Call

```
./make_prediction.sh
```
