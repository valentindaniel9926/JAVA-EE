# Build
mvn clean package && docker build -t academy.learnprogramming/helloworld .

# RUN

docker rm -f helloworld || true && docker run -d -p 8080:8080 -p 4848:4848 --name helloworld academy.learnprogramming/helloworld 