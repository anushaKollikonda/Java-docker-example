FROM ubuntu:latest
WORKDIR /app
COPY . /app
RUN  apt-get update &&  apt-get install -y openjdk-8-jdk
RUN javac Main.java
CMD ["java", "Main"]
