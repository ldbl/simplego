docker build -t my-go-app .

fly --target stan-pipelines login --concourse-url http://127.0.0.1:8080 -u test -p test

fly -t stan-pipelines set-pipeline -c build-docker-image-pipeline.yml -p build-and-push-simplego-image -l parameters.yml

