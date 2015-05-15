#VERSION 1.0.3
FROM konupek/docker-base-python
MAINTAINER Petr Konupek <petr@konupek.cz>

# Install XLSX2CSV
RUN git clone https://github.com/konupek/xlsx2csv-convertor.git /var/convertor

RUN pip install yaml
RUN pip install xlrd
ENTRYPOINT python2.7 /var/convertor/run.py -d /data/