FROM python:3.8

WORKDIR /code/

COPY requirement.txt /requirement.txt

RUN apt update

RUN apt-get install texlive-xetex

RUN pip --version

RUN pip install -r /requirement.txt

RUN adduser -D jupyter jupyter

RUN chown -R jupyter:jupyter /code/

USER jupyter

CMD jupyter notebook --no-browser --ip='*' --NotebookApp.token='' --NotebookApp.password='' 