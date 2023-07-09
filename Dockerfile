FROM python:3.8.10
WORKDIR /usr/src/application
COPY . .
COPY requirements.txt ./
RUN pip install fastapi uvicorn
RUN pip install -r requirements.txt
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
