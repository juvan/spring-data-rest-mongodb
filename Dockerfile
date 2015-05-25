#for mongodb > sudo docker run --name my-mongo -d mongo
# for run with link > sudo docker run -d -rm -p 8080:8080 -e "spring.data.mongodb.host=db" --name currency-service --link  my-mongo:db  currency/service 
FROM jamesdbloom/docker-java8-maven:latest
MAINTAINER Marcelo Colomer 
RUN git clone https://github.com/juvan/spring-data-rest-mongodb
WORKDIR spring-data-rest-mongodb/currency-service
CMD ["mvn", "spring-boot:run"]
EXPOSE 8080