# A special docker file that
FROM python:3.7-stretch

RUN apt-get update && apt-get -y install \
    apt-transport-https \
    ca-certificates \
    python3-dev \
    libgpgme-dev \
    gnupg2 \
    swig \
    postgresql-client

# We want dump init because reasons here https://github.com/Yelp/dumb-init
RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64.deb
# TODO(team) add sha256 check here
RUN dpkg -i dumb-init_*.deb

ENV TZ UTC


RUN pip install --upgrade pip
RUN pip install --upgrade setuptools pipenv jupyter ipython-autotime

# ADD app/Pipfile /app/Pipfile
# ADD app/Pipfile.lock /app/Pipfile.lock

ADD app/ /app
ENV PYTHONPATH=/app

WORKDIR /app
RUN pipenv install --deploy --system

# ADD app/ /app
# ENV PYTHONPATH=/app

EXPOSE 8888/tcp

ENTRYPOINT ["dumb-init", "--", "jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]