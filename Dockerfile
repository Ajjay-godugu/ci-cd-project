# Use the official Python image from DockerHub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy dependency file and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

