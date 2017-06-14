MAINTAINER Tanja Gubser <tanja.gubser@aspectra.ch>

FROM java:7

# environmet variables
ENV FOO bar

COPY src /home/root/javahelloworld/src

# change the working directory
WORKDIR /home/root/javahelloworld

# run the commands in the working directory
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

# start app in working directory
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

