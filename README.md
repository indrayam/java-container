# Building Small Java Docker Containers

I used the article [Building an Application with Spring Boot](https://spring.io/guides/gs/spring-boot/) to create a simple SpringBoot app. After that, I created the `Dockerfile` and `launch.sh` files based on the article [Dockerizing Java 10 Spring Boot app](https://itnext.io/dockerizing-java-10-spring-boot-app-d21e95a348f6). The result is this repository :smile:


## Assumptions

I ran these on my Ubuntu Xenial (16.04) as well as my MacBook. In order to install and play with the software in this repo, you need to make sure that you have the following softwares installed. More recent versions than the ones below should be ok.

- Docker

```bash
>docker version
Client:
 Version:           18.06.1-ce
 API version:       1.38
 Go version:        go1.10.3
 Git commit:        e68fc7a
 Built:             Tue Aug 21 17:24:56 2018
 OS/Arch:           linux/amd64
 Experimental:      false

Server:
 Engine:
  Version:          18.06.1-ce
  API version:      1.38 (minimum version 1.12)
  Go version:       go1.10.3
  Git commit:       e68fc7a
  Built:            Tue Aug 21 17:23:21 2018
  OS/Arch:          linux/amd64
  Experimental:     false
```

- Java

```bash
> java -version
java version "1.8.0_191"
Java(TM) SE Runtime Environment (build 1.8.0_191-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.191-b12, mixed mode)
``` 

- Maven

```bash
> mvn --version
Apache Maven 3.5.4 (1edded0938998edf8bf061f1ceb3cfdeccf443fe; 2018-06-17T18:33:14Z)
Maven home: /usr/local/maven
Java version: 1.8.0_181, vendor: Oracle Corporation, runtime: /usr/lib/jvm/java-8-openjdk-amd64/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "4.4.0-137-generic", arch: "amd64", family: "unix"
```

## Steps to Build and Run the Docker Image

1. Clone this repo and change directory

```bash
git clone https://github.com/indrayam/java-container.git
cd java-container
```

2. Build the SpringBoot App

```bash
mvn package
java -jar target/gs-spring-boot-0.1.0.jar
```

3. Build the Docker image

```bash
d build -t helloworld .
```

4. Run the Docker Image

```bash
d run -d --name sbdemo -p 8080:8080 -e JAVA_XMS='512m' -e JAVA_XMX='1g' helloworld
```

Resulting container size: **129MB**


## References

1. [Building tiny docker containers with JDK9](https://blog.dekstroza.io/building-minimal-docker-containers-with-java-9/)
2. [Dockerizing Java 10 Spring Boot app](https://itnext.io/dockerizing-java-10-spring-boot-app-d21e95a348f6)
3. [Improved Docker Container Integration With Java 10](https://blog.docker.com/2018/04/improved-docker-container-integration-with-java-10/)
4. [OpenJDK Images](https://hub.docker.com/_/openjdk/)
5. [Building an Application with Spring Boot](https://spring.io/guides/gs/spring-boot/)
