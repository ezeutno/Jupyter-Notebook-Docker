FROM python:3.8

RUN apt update

RUN apt-get -y install texlive-xetex

RUN apt-get -y install pandoc

RUN apt-get -y install default-jre

RUN pip --version

COPY requirement.txt /requirement.txt

RUN pip install -r /requirement.txt

RUN useradd -ms /bin/bash jupyter

WORKDIR /home/jupyter/code/

USER jupyter

CMD jupyter notebook --no-browser --ip='*' --NotebookApp.token='' --NotebookApp.password='' 