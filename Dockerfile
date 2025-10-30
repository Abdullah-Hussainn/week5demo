# syntax=docker/dockerfile:1
FROM python:3.11-slim

WORKDIR /app

# Install deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

EXPOSE 5000

# Start the app (no shell, no fancy quoting)
CMD ["python", "app.py"]
