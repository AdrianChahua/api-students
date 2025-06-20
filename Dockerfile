FROM python:3-slim

WORKDIR /programas/api-students

COPY . .

RUN pip3 install flask

CMD ["python3", "app.py"]
