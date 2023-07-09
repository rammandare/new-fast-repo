FROM python:3.8.10
WORKDIR /usr/src/application
COPY requirements.txt ./
RUN sudo pip install fastapi uvicorn
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
