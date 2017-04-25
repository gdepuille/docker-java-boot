FROM gdepuille/docker-common
MAINTAINER Gregory DEPUILLE <gregory.depuille@gmail.com>

# Le monitoring de Spring Boot sera exposé sur le port 81 
EXPOSE 81

# Define application directory as workdir
WORKDIR /app

# Build arguments
ENV JAVA_VERSION 8

# Install Java
RUN apk --update add openjdk${JAVA_VERSION}-jre && \
    rm -rf /var/cache/apk/*

# Define default command
CMD ["java","-Djava.security.egd=file:/dev/./urandom", "-version"]
