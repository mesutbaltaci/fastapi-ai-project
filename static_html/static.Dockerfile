#declare what image to use
FROM python:3.13.4-slim-bullseye
WORKDIR /app
# RUN mkdir -p /static_folder
COPY ./src .

# RUN echo "hello" > index.html #linux command to create a file


# docker build -f Dockerfile -t pyapp .
# docker run -it pyapp

# docker build -f Dockerfile -t mesutbaltaci/ai-py-app-test:latest .
# docker run -it pyapp
# docker push mesutbaltaci/ai-py-app-test:latest


# python -m http.server 8000
# docker run -it -p 8000:8000 pyapp
CMD ["python", "-m", "http.server", "8000"]