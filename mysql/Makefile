build:
	docker build -t opstree/database .

run:
	docker rm -f database || true
	docker run -it -p 3306:3306 --name database opstree/database

#make push-image DOCKER_HUB_REPO=sandyot/db
push-image:
	docker login
	docker tag opstree/database $(DOCKER_HUB_REPO)
	docker push $(DOCKER_HUB_REPO)

#make push-image DOCKER_HUB_REPO=sandyot/db
push-image:
	docker login
	docker tag opstree/database $(DOCKER_HUB_REPO)
	docker push $(DOCKER_HUB_REPO)
