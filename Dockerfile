FROM resin/rpi-raspbian:jessie-20160831
COPY qemu-arm-static /usr/bin/qemu-arm-static
RUN apt-get update && \
 	apt-get install -y wget openjdk-8-jdk && \
 	rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-armhf
CMD ["bash"]
