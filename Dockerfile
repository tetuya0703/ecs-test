FROM nginx
RUN apt-get -y update
RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get -y install git
RUN rm -rf /usr/share/nginx/html
RUN git clone https://github.com/smokeymonkey/ecs-web.git /usr/share/nginx/html
RUN cd /usr/share/nginx/html && \
    git checkout ea2c9bb790307cb03f3573913e3a691ede24ea74
