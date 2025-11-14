import os
from fastapi import FastAPI


app = FastAPI()

API_KEY = os.environ.get("API_KEY")
PROJECT_NAME = os.environ.get("MY_PROJECT_NAME")

if not API_KEY:
    raise NotmplementedError("'API_KEY' not set")


@app.get("/")
def read_root():
    return {"message": "Hello World!!!!!"}


