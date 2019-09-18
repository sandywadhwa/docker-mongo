# mkdir -p $PWD/data
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker build -t sandywadhwa/mongo-apline .
docker run --rm --name sandy-mongo-container -p 27018:27017 -d -v $PWD/data/db:/data/db sandywadhwa/mongo-apline