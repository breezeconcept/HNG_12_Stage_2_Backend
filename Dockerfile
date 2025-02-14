# Use an official lightweight Python image
FROM python:3.11-slim

# Set the working directory in the container (no need for /app)
WORKDIR /

# Copy only necessary files (avoid copying unnecessary files like .git)
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 8000

# Command to run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

