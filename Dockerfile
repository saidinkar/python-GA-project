#This is the base image for this Dockerfile
FROM python:3-alpine3.15

LABEL BuildBy="Dinkar Gedela"
LABEL BuilderEmail="dgedela@archinsurance.com"

#Set the working directory in the container
WORKDIR /app
COPY . /app

#Copy the requirements file into the container
COPY requirements.txt .

#install the dependencies from requirements.txt
RUN pip install -r requirements.txt

#Open the port on which Flask app will run
EXPOSE 8080

#commands to run the Flask app
ENTRYPOINT [ "python" ]
CMD [ "/src/app.py" ]