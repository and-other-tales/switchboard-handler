FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Use gunicorn as the entrypoint with workers that can handle async
CMD ["python", "agent.py", "start"]
