FROM python:alpine3.18

# update the image 
# RUN apt clean && apt upgrade -y && apt update -y --fix-missing

# create a working directory
WORKDIR /etc/workdir

COPY ./requirements.txt ./

# pip install pytest request library and reports
RUN pip3 install --no-cache-dir -r requirements.txt

# Set locale
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENTRYPOINT  pytest --verbose --html=./results/$PTAG-report.html --self-contained-html

