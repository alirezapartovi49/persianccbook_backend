# Use the official Python Alpine image as a base
FROM python:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file
COPY src/requirments.txt .

# Install dependencies
RUN pip install -r requirments.txt

# Copy the application code
COPY src/* .

# Expose the port for Gunicorn
EXPOSE 8000

# Run Gunicorn when the container starts
CMD ["gunicorn", "--workers=3", "--bind=0.0.0.0:8000", "core.wsgi:application"]
