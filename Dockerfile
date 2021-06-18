FROM ubuntu:latest
RUN apt-get update && apt-get -y  upgrade
RUN apt install -y python3-pip
RUN pip3 install flask
RUN apt install -y git
RUN git clone https://github.com/HSE-NN-SE/final-lab-Ilya-Tatsenko.git && ls && cd final-lab-Ilya-Tatsenko
ENV FLASK_APP=final-lab-Ilya-Tatsenko/js_example
CMD python3 -m flask run --host=0.0.0.0
