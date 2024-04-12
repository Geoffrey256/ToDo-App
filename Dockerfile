# Base image with python
FROM python:3.9-slim

# Manage environment variables
ENV PYTHONUNBUFFERED 1

# Set work directory for your code
WORKDIR /app

# Copy your code into the working directory
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 8000

# Run server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
