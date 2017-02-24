build:
	docker build -t opstree/database .

run:
	docker rm -f database || true
	docker run -it -p 3306:3306 --name database opstree/database
