#This the base image for this Dockerfile
FROM python:3-alpine3.15

LABEL BuiltBy: "Dinkar Gedela"
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 3000
CMD [ "python" , "/src/app.py" ]
