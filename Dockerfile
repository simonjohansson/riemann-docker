FROM java:8

RUN apt-get update && apt-get install -y curl bzip2
RUN curl https://aphyr.com/riemann/riemann-0.2.8.tar.bz2 | tar -C /opt -xj

EXPOSE 5555
EXPOSE 5556

ENTRYPOINT /opt/riemann-0.2.8/bin/riemann /opt/riemann-0.2.8/etc/riemann.config