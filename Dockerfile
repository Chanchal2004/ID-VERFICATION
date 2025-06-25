FROM python:3.10-slim

# Install required system packages
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

# Copy all files
COPY . /app

# Upgrade pip
RUN pip install --upgrade pip

# 👉 INSTALL dlib FIRST so wheel is used
RUN pip install dlib==19.24.0

# 👉 THEN install face_recognition, which uses prebuilt dlib
RUN pip install face_recognition==1.3.0

# Install rest of your dependencies
RUN pip install \
    opencv-python==4.8.1.78 \
    flask==2.3.3 \
    flask-cors==4.0.0 \
    Pillow==9.5.0 \
    numpy==1.24.3

# Set environment & port
ENV FLASK_APP=backend/app.py
EXPOSE 10000

# Run the app
CMD ["python", "backend/app.py"]
