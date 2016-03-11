FROM java:7

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim
ENV TEST blabla
ENV FOO bar

ENTRYPOINT ["java","-cp", "bin", "HelloWorld"]
