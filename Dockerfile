FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/seardrag0n/pinterest-clone.git

WORKDIR /home/pinterest-clone/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-n(nrzlb6raf_0s8+bde=606vs1lerm+%9&2o*rog*y&y+7k@4m" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

