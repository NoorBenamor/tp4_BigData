FROM python:3.9

WORKDIR /app

COPY requirements.txt .  

RUN pip install --upgrade pip  

RUN pip install -r requirements.txt  

COPY cleaned_data.csv /data/cleaned_data.csv


EXPOSE 8888  

ENTRYPOINT ["python3", "scripts/analyse_data.py"]
CMD ["bash"]
