FROM tomcat:9.0-alpine
MAINTAINER A a
RUN apk update && apk add git
RUN mkdir -p ./webapps/task
RUN git clone https://github.com/a1qatraineeship/docker_task.git ./webapps/task
EXPOSE 8080
CMD ["catalina.sh", "run"]
