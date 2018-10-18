# Building Small Java Docker Containers (Alpine Edition)


## Build Alpine GNU C Library Docker Image

Heavily plagiarized from [docker-alpine-glibc](https://github.com/frol/docker-alpine-glibc)

```bash
d build -t alpine-glibc -f Dockerfile.alpine-glibc .
```

## Build Java Container on Alpine (glibc-based)

1. Run

```bash
d run -it --rm --name demo alpine-glibc /bin/bash
```

However, when I download JDK 11 for Linux and try to run it inside this container, it errors out.

:sad:

## Build Java Container on Alpine (musl-based)


1. Build

```bash
d build -t helloworld-alpine -f Dockerfile.jdk-musl .
```

2. Run

```bash
d run -d --name demo -p 8080:8080 -e JAVA_XMS='128m' -e JAVA_XMX='256m' helloworld-alpine
```

Output:

```bash
d logs 2fb17dc1b05e
standard_init_linux.go:190: exec user process caused "no such file or directory"
```

Guess this does not work either. This one surprised me.

:sad:
