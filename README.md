# Building Small Java Docker Containers

1. [Building tiny docker containers with JDK9](https://blog.dekstroza.io/building-minimal-docker-containers-with-java-9/)
2. [Dockerizing Java 10 Spring Boot app](https://itnext.io/dockerizing-java-10-spring-boot-app-d21e95a348f6)
3. [Improved Docker Container Integration With Java 10](https://blog.docker.com/2018/04/improved-docker-container-integration-with-java-10/)
4. [OpenJDK Images](https://hub.docker.com/_/openjdk/)
5. [Building an Application with Spring Boot](https://spring.io/guides/gs/spring-boot/)

## Steps to Build and Run the Docker Image

1. I used `5. Building an Application with Spring Boot` to create a simple SpringBoot app. After that, I created the `Dockerfile` and `launch.sh` files based on reference `2. Dockerizing Java 10 Spring Boot app`. The result is all in this repo

2. Build the Docker image

> `d build -t helloworld .`

3. Run the Docker Image

> `d run -d --name sbdemo -p 8080:8080 -e JAVA_XMX='1g' -e JAVA_XMS='512m' helloworld`

Resulting container size: **129MB**
