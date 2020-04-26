FROM python:3.6

WORKDIR /admin

COPY requirements.txt /admin
RUN pip3 install -r requirements.txt

COPY /src/admin.py /admin

EXPOSE 5000

CMD ["python3", "admin.py"]