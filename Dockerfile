#VERSION 1.0.3
FROM konupek/docker-base-python
MAINTAINER Petr Konupek <petr@konupek.cz>

# Install XLSX2CSV
RUN git clone https://github.com/konupek/xlsx2csv-convertor.git /var/convertor

# Install PyYAML
RUN cd /tmp && \
    wget --no-check-certificate http://pyyaml.org/download/pyyaml/PyYAML-3.11.tar.gz && \
    tar -xvf PyYAML-3.11.tar.gz && \
    cd PyYAML-3.11 && \
    python2.7 setup.py install 

# Install XLRD
RUN cd /tmp && \
    wget --no-check-certificate https://pypi.python.org/packages/source/x/xlrd/xlrd-0.9.3.tar.gz#md5=6f3325132f246594988171bc72e1a385 && \
    tar -xvf xlrd-0.9.3.tar.gz && \
    cd xlrd-0.9.3 && \
    python2.7 setup.py install 

ENTRYPOINT python2.7 /var/convertor/run.py -d /data/