FROM python:3.7
RUN apt-get update
RUN python3 -m pip install --upgrade pip
#RUN apk add chromium
#RUN apk add chromium-chromedriver
RUN apt-get install -y chromium
RUN apt-get install -y chromium-driver
#RUN apt-get install -y chromium-chromedriver
#RUN apt-get install -y libglib2.0 libnss3 libgconf-2-4 libfontconfig1
#RUN apt install -y chromium-browser
WORKDIR /app
COPY requirements/requirements.txt /app
RUN pip3 install -r requirements.txt --no-cache-dir
COPY . .
LABEL author="mv_rogozov"
ENV TG_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
EXPOSE 8081/tcp 8082/tcp
CMD ["python3", "job_parser.py"]