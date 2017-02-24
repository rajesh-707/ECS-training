build-app-war:
	docker run -it --rm --name my-maven-project -v `PWD`:/usr/src/mymaven -w /usr/src/mymaven maven:3.2-jdk-7 mvn clean package

build-tomcat:
	make build-app-war
	docker build -t opstree/tomcat --file `pwd`/Dockerfile.tomcat `pwd`

rm-tomcat:
	docker rm -f tomcat || true

run-tomcat:
	make rm-tomcat
	docker run -it --rm -P --name tomcat --link database:databas  opstree/tomcat

build-run-tomcat:
	make build-tomcat
	sleep 1
	make run-tomcat

rm-all:
	make rm-tomcat
