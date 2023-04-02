FROM python:latest
RUN pip install --upgrade pip

WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY main.py /app
COPY download.py /app

# Download the data
RUN python download.py

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
