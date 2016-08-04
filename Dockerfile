FROM nginx
RUN apt-get -y update
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get -y install git
RUN rm -rf /usr/share/nginx/html
RUN git clone https://github.com/tetuya0703/ecs-test.git /usr/share/nginx/html
RUN cd /usr/share/nginx/html && \
    git checkout ea2c9bb790307cb03f3573913e3a691ede24ea74
