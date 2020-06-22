FROM heroku/miniconda:3

RUN conda install anaconda-client
RUN conda install python=3.6.3

ADD ./environment.yml /tmp/environment.yml
RUN conda env update --file /tmp/environment.yml
