build-app-war:
	docker run -it --rm --name my-maven-project -v `PWD`:/usr/src/mymaven -v `PWD`/.m2:/root/.m2 -w /usr/src/mymaven maven:3.2-jdk-7 mvn clean package

build-tomcat:
	docker build -t opstree/tomcat .

rm-tomcat:
	docker rm -f tomcat || true

run-tomcat:
	make rm-tomcat
	docker run -it --rm -P --name tomcat --link database:database opstree/tomcat

build-run-tomcat:
	make build-tomcat
	sleep 1
	make run-tomcat

rm-all:
	make rm-tomcat

#make push-image DOCKER_HUB_REPO=sandyot/tomcat
push-image:
	docker login
	docker tag opstree/tomcat $(DOCKER_HUB_REPO)
	docker push $(DOCKER_HUB_REPO)
