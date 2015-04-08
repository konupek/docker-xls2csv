#VERSION 1.0.1
FROM konupek/docker-base-python
MAINTAINER Petr Konupek <petr@konupek.cz>

# Install XLSX2CSV
RUN pip install pyyaml
RUN git clone https://github.com/konupek/xlsx2csv-convertor.git /var/convertor
RUN sudo ln -s /var/convertor/start_conversion.sh /usr/bin/start_conversion.sh 