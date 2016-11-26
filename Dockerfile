FROM python:2.7-alpine

#use gunicorn
RUN pip install gunicorn==19.6.0

#Install requirements
COPY requirements.txt /usr/src/app/
WORKDIR /usr/src/app
RUN pip install -r requirements.txt

COPY . /usr/src/app/

EXPOSE 5000
ENTRYPOINT ["/usr/local/bin/gunicorn"]
#CMD -w 3 -b 0.0.0.0:5000 --timeout=120 --reload --access-logfile /var/log/access.log server:app
CMD ["-w", "1", "-b", "0.0.0.0:5000","--threads","1","main:app","--access-logfile", "-", "--error-logfile", "-" ]
