FROM python:3.6

EXPOSE 5000

WORKDIR /listBooksApp

COPY requirements.txt /listBooksApp
RUN pip install -r requirements.txt

COPY server.py /listBooksApp
CMD python server.py