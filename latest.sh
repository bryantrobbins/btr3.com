#/bin/bash
echo Building image
id=$(docker build . | grep "Successfully built" | awk '{print $3}')
echo Image id is $id
echo Tagging image
docker tag -f $id bryantrobbins/www:latest
echo Pushing image to Docker Hub
docker push bryantrobbins/www
echo Done
