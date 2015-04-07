#VERSION 1.0.1
FROM konupek/docker-base-python
MAINTAINER Petr Konupek <petr@konupek.cz>

# Install XLSX2CSV
RUN pip install xlsx2csv