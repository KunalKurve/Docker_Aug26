FROM openjdk:17-ea

COPY target/Docker_Aug26-0.0.1-SNAPSHOT.jar app.jar

# command to run jar file is "java -jar app.jar"
ENTRYPOINT ["java","-jar","app.jar"]


# Docker commands
# To build image: docker build -t oshman90/appimage:v0.0.1 .
# To run docker container: docker run oshman90/appimage:v0.0.1
# the above command ran the app but we couldn't access it because it was only running inside
# the docker container's port 8080, we need to do port forwarding, run the app on our machine's 8080 or 9000
# hence: docker run -d --name "container1" -p 9000:8080 oshman90/appimage:v0.0.1
# this is the final command

# To push the Docker image: docker push oshman90/appimage:v0.0.1
# to get this image and run remotely into any machine, do :
# docker pull oshman90/appimage:v0.0.1 and
# docker run -d --name "container1" -p 9000:8080 oshman90/appimage:v0.0.1
# note: name is not compulsory

# eg for Anurag Sir's image
# docker pull aks2307/appimage:v0.0.1
# docker run -d -p 9000:8080 aks2307/appimage:v0.0.1

