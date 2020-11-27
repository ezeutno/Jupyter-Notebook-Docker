FROM python:3.8

WORKDIR /code/

COPY requirement.txt /requirement.txt

RUN pip install -r /requirement.txt

CMD jupyter notebook --no-browser --ip='*' --NotebookApp.token='' --NotebookApp.password=''