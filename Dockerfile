# Use Miniconda base image
FROM continuumio/miniconda3

# Prevent interactive prompts during installs
ENV DEBIAN_FRONTEND=noninteractive

# Create a conda environment with all required packages
RUN conda create -n myenv python=3.10 \
    dlib=19.24 \
    face_recognition \
    opencv \
    flask \
    flask-cors \
    numpy \
    pillow \
    -c conda-forge

# Use conda environment by default
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]

# Set working directory
WORKDIR /app

# Copy project files into container
COPY . /app

# Expose the port Flask will run on
EXPOSE 10000

# Command to run the Flask app
CMD ["conda", "run", "--no-capture-output", "-n", "myenv", "python", "backend/app.py"]
