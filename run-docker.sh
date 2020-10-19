chmod +x docker-entrypoint.sh
APP=wakeup
docker rm -f $APP
docker build -t $APP .
docker run -d -it --name $APP $APP
docker ps
docker exec -it $APP sh
