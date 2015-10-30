FROM java:8

RUN apt-get update && apt-get install -y curl bzip2
ENV VERSION 0.2.10
RUN curl https://aphyr.com/riemann/riemann-${VERSION}.tar.bz2 | tar -C /opt -xj

VOLUME ["/config"]

EXPOSE 5555
EXPOSE 5556

COPY start.sh ./
CMD ./start.sh
