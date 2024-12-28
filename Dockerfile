#Use the Official image form the docket hub
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY . ./app

# Install the dependencies
RUN pip install --no-cache-dir -r ./app/requirements.txt

#Expose the port
EXPOSE 5000

#Run the flask application.
CMD ["python", "./app/app.py"]