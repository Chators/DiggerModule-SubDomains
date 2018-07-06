#Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./subdomains /app

# Install any needed packages specified in requirements.txt
RUN chmod 755 execSubDomains.sh
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
#EXPOSE 80

# Define environment variable
#ENV fileLog sl


# Run app.py when the container launches
#CMD ["python", "domainOsint.py"]
