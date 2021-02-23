export DOCKER_BUILDKIT=1
DOCKER_ARGS=

.PHONY: mailway
mailway: ubuntu/Dockerfile
	docker build -t $@ ./ubuntu -f $< $(DOCKER_ARGS)

.PHONY: mailway-local
mailway-local: ubuntu-local/Dockerfile
	docker build -t $@ ./ubuntu-local -f $< $(DOCKER_ARGS)

.PHONY: push
push: mailway mailway-local
	docker tag mailway docker.io/mailway/mailway
	docker push docker.io/mailway/mailway
	docker tag mailway-local docker.io/mailway/mailway-local
	docker push docker.io/mailway/mailway-local
