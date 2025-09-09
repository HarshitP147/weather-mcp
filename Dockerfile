FROM python:3.11

WORKDIR /app

# Install uv first 
RUN pip install uv

# Copy requirements.txt first
COPY requirements.txt .

# Create and activate virtual environment, then install packages
RUN uv venv && \
    uv pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

EXPOSE 8000

# Run using uv run (which automatically uses the virtual environment)
CMD ["uv", "run", "weather.py"]