FROM python:2.7
ADD doc doc
WORKDIR doc
RUN pip install -r requirements.txt
CMD make html-zh
WORKDIR _build/html-zh
CMD python -m SimpleHTTPServer