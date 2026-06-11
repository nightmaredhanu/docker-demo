#FROM ubuntu:latest
#WORKDIR /app
#COPY 
#RUN apt update && apt install nginx -y 
#EXPOSE 80
#CMD ["nginx", "-g", "daeman off;"]

# Use official Python image
#FROM python:3.12-slim

# Set working directory
#WORKDIR /app

# Copy requirements first (better caching)
#COPY main.py .


# Expose app port (optional)
#EXPOSE 8000

# Run the application
#CMD ["python", "app.py"]
##

FROM nginx:latest
WORKDIR /app
COPY main.py .
#ADD https://docker-s3-demo-123.s3.ap-south-1.amazonaws.com/work-1.html .
RUN apt update && apt install -y nginx
ENV name="microdegree"
EXPOSE 80
VOLUME [ "/data" ]
CMD ["nginx", "-g", "daemon off;"]


