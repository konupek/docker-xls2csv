#VERSION 1.0.3
FROM konupek/docker-base-python
MAINTAINER Petr Konupek <petr@konupek.cz>

# Install XLSX2CSV
RUN git clone https://github.com/konupek/xlsx2csv-convertor.git /var/convertor

#RUN yum -y install python-yaml
RUN alias python=/usr/local/bin/python2.7
RUN easy_install xlrd
#ENTRYPOINT python /var/convertor/run.py -d /data/