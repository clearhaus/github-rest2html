FROM python:3-alpine

RUN python -m pip install docutils

WORKDIR /opt/github-rest2html
COPY wrapper /opt/github-rest2html
COPY rest2html /opt/github-rest2html

ENTRYPOINT ["/opt/github-rest2html/wrapper"]
