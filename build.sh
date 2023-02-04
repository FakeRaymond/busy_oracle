docker build . -t lookbusy:latest --no-cache --rm

docker stop lookbusy
docker rm -v lookbusy

docker run -d -it --name="lookbusy" --restart=always lookbusy
