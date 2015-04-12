## Docker XLS(X) to CSV Convertor ##

This Docker image use simple Python script to convert all XLS(X) files from input directory to CSV and export them to output directory.

It is placed on Dockerhub as well so you can simply run it wihtout local building.

### Setup
Image itself **does not** contain shared directory setup and you have to pass it via volume option to the container.

An example structure of shared directory:

    shared
	    +--config
	    |  +--config.yaml
	    +--input
	    +--output

An example of **config.yaml**:

```yaml
path:
  input: '/var/shared/input/'
  output: '/var/shared/output/'
```

Now you can simply place your .XLS or .XLSX files to the input directory and run container as shown below:

```bash
docker run -v /YOUR_HOST_PATH/shared/:/var/shared/ konupek/docker-xls2csv sh start_conversion.sh
```

After successful run you will find find results of conversion in your output directory.
