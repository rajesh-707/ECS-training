build:
	docker build -t opstree/ecs_cli .

run:
	docker run --privileged -itd -e REGION=$(REGION) -e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) -e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) -e CLUSTER_NAME=$(CLUSTER_NAME) --name ecs_cli opstree/ecs_cli

configure:
	docker exec -d ecs_cli ecs-cli configure --region $(REGION) --access-key $(AWS_ACCESS_KEY_ID) --secret-key $(AWS_SECRET_ACCESS_KEY) --cluster $(CLUSTER_NAME)
