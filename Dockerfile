FROM python:3.9

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ingest_data.py ingest_data.py

ENTRYPOINT [ "python" , "ingest_data.py"]