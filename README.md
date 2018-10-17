# Building Small Java Docker Containers

I used the article [Building an Application with Spring Boot](https://spring.io/guides/gs/spring-boot/) to create a simple SpringBoot app. After that, I created the `Dockerfile` and `launch.sh` files based on the article [Dockerizing Java 10 Spring Boot app](https://itnext.io/dockerizing-java-10-spring-boot-app-d21e95a348f6). The result is this repository :smile:

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
d run -d --name sbdemo -p 8080:8080 -e JAVA_XMS='512m' -e JAVA_XMX='1g' sbhelloworld
```

Resulting container size: **129MB**


## References

1. [Building tiny docker containers with JDK9](https://blog.dekstroza.io/building-minimal-docker-containers-with-java-9/)
2. [Dockerizing Java 10 Spring Boot app](https://itnext.io/dockerizing-java-10-spring-boot-app-d21e95a348f6)
3. [Improved Docker Container Integration With Java 10](https://blog.docker.com/2018/04/improved-docker-container-integration-with-java-10/)
4. [OpenJDK Images](https://hub.docker.com/_/openjdk/)
5. [Building an Application with Spring Boot](https://spring.io/guides/gs/spring-boot/)
