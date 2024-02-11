FROM python:3.12.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt setup.py /usr/src/app/

RUN pip3 install --no-cache-dir -r requirements.txt

RUN python setup.py install

EXPOSE 8080

ENTRYPOINT ["python3"]

CMD ["-m", "swagger_server"]