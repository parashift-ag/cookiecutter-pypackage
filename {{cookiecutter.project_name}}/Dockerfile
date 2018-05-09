FROM {{cookiecutter.docker_base_image}} 

WORKDIR {{cookiecutter.docker_workdir}} 

RUN apt-get update && apt-get install -y openssh-client \
  && curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 \
  > "/usr/local/bin/cc-test-reporter" \
  && chmod +x "/usr/local/bin/cc-test-reporter"

ENV CC_TEST_REPORTER_ID={{cookiecutter.cc_test_reporter_id}}

COPY . . 
RUN pip3 install -r requirements.txt
 
CMD ["python3", "app.py"]

