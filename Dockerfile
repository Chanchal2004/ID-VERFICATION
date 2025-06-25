FROM continuumio/miniconda3

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Tesseract system binary
RUN apt-get update && apt-get install -y tesseract-ocr

# Create conda environment with all dependencies
RUN conda create -n myenv python=3.10 \
    dlib=19.24 \
    face_recognition \
    opencv \
    flask \
    flask-cors \
    numpy \
    pillow \
    pytesseract \
    -c conda-forge

# Activate environment for future commands
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]

# Set working directory and copy code
WORKDIR /app
COPY . /app

# Expose port
EXPOSE 10000

# Run the app
CMD ["conda", "run", "--no-capture-output", "-n", "myenv", "python", "backend/app.py"]
