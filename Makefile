export DOCKER_BUILDKIT=1
DOCKER_ARGS=

.PHONY: mailway
mailway: ubuntu/Dockerfile
	docker build -t $@ ./ubuntu -f $< $(DOCKER_ARGS)

.PHONY: push
push: mailway
	docker tag mailway docker.io/mailway/mailway
	docker push docker.io/mailway/mailway

