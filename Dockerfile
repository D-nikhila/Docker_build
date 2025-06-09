# Use an existing image as a base
FROM python:3.12

# Set the working directory
WORKDIR /usr/local/app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code
COPY src ./src

# Expose the application port
EXPOSE 5000

# Create a non-root user and switch to it
RUN useradd app
USER app

# Define the command to run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
