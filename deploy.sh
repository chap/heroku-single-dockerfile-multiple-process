docker build --target web --tag web .
docker build --target worker --tag worker .

docker tag web registry.heroku.com/docker-app-name/web
docker push registry.heroku.com/docker-app-name/web

docker tag worker registry.heroku.com/docker-app-name/worker
docker push registry.heroku.com/docker-app-name/worker

heroku container:release web worker
