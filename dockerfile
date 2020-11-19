FROM python:3.8-alpine

COPY . /requirements.txt 

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "setup.py", "install"]