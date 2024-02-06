FROM python:3.9

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ingest_data.py ingest_data.py 
COPY upload_data.py upload_data.py

COPY ingest_script.sh ingest_script.sh
COPY upload_script.sh upload_script.sh 
COPY master_script.sh master_script.sh

RUN chmod +x ingest_script.sh upload_script.sh master_script.sh

CMD [ "./master_script.sh" ]