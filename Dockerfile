FROM python:3.8-slim-buster

# Set working directory
WORKDIR /app

# Copy everything to /app
COPY . /app

# Install OS-level dependencies
RUN apt update -y && apt install -y awscli

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python", "app.py"]
