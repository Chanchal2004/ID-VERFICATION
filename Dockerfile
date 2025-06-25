# Use official Python image with build tools
FROM python:3.10-slim

# Install system dependencies required by dlib and face_recognition
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgtk-3-dev \
    libboost-all-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all files into container
COPY . /app

# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip
RUN pip install face_recognition==1.3.0 opencv-python==4.8.1.78 flask==2.3.3 flask-cors==4.0.0 Pillow==9.5.0 numpy==1.24.3

# Expose the port Flask will run on
EXPOSE 10000

# Set environment variable for Flask
ENV FLASK_APP=backend/app.py

# Run the app
CMD ["python", "backend/app.py"]
