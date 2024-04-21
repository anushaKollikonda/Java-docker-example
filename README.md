How to write a docker file to run java class

First we need to write Dockerfile in the directory which has java file. 
for example My folder name is JavaProGram 
In this we have two file Main.java and Dockerfile

In Dockerfile we need to write coomands like this. If You are good at linux commands then it will be easy.

# we are taking a base image from the public repository and we are not running this application on os . Thats y we are taling an abse image 
FROM ubunut:latest
# This will directory that will be formed in containers
WORKDIR /app

# we are copying the folder to  app folder of  docker container
COPY . /app

# installing jdk 8 version
RUN apt-get update && apt-get  install openjdk-11-jdk

# compiling the java class
RUN javac Main.java 
# for running java class you need to use command like java Main 
CMD ["java", "Main"]

After completeion of docker file 
open git teriminal like that 
1.create a docker image '
$docker build -t image-name:tag .

2.to see the images
$docker images

3.to run the image 
$docker run -it container-id

4.to see the running containers
$dcoker ps

5.to see all the container which are running or stopped
$docker ps -a

6.to stop the container
$ docker stop container-id

7. If u want to stop all the containers at once
$ docker stop $(docker ps)

8. if u wanna start all the containers which are stopped
$docker start $(docker ps)

9.how to remove an image
$docker rm image-id

10.to start a conatiner 
$docker start conatiner-id


