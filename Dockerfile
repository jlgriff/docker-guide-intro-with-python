# Name of image either on local machine or on DockerHub which will be built on top of
FROM python

# Tells Docker to run all subsequent commands inside this directory
WORKDIR /app

# Which files should be included in the image
# The first argument tells it to include all folders and subfolders in the current directory
# The second argument tells it where it should get saved inside the docker image (since WORKDIR was set to /app, '.' will point to /app)
COPY . /app

# Unlike RUN, this will not be executed when the image is created, but when the container is created from the image
CMD ["python", "rng.py"]

# docker build -t rng:latest .
# docker run -it --name rngapp rng:latest
# Because this doesn't start a web server, run `docker run -it {build}` to communicate with the program
# To restart the container, run `docker start -a -i {build}`