FROM python:3.13.4-slim-bullseye

#create a python virtual environment
#isolate the dependencies of the project
RUN python -m venv /opt/venv/
ENV PATH=/opt/venv/bin:$PATH
WORKDIR /app

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY ./src .

CMD ["python", "-m", "http.server", "8000"]