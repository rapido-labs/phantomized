set -e

docker build --rm --platform linux/x86_64 -t phantomized .
docker run --platform linux/x86_64 --name phantomized -e PHANTOM_VERSION=2.1.1 phantomized
docker cp phantomized:/app/dockerized-phantomjs.tar.gz ./dockerized-phantomjs.tar.gz
docker rm phantomized
