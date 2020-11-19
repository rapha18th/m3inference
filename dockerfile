FROM python:3.8-alpine

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY requirements.txt .


RUN pip3 install -r requirements.txt

CMD ["python", "setup.py", "install"]