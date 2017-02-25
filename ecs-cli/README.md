# MAKE COMMANDS

- BUILD DOCKER IMAGE
  - ```make build```
- RUN CONTAINER
  - ```make run REGION=us-west-1 AWS_ACCESS_KEY_ID= AWS_SECRET_ACCESS_KEY= CLUSTER_NAME=ecs-training```

# ECS-CLI Demo
- Setup ECS-CLI
  - ```ecs-cli configure --region ${REGION} --access-key ${AWS_ACCESS_KEY_ID} --secret-key ${AWS_SECRET_ACCESS_KEY} --cluster ${CLUSTER_NAME}```
- CREATE A CLUSTER
  - ```ecs-cli up --keypair <keypair> --capability-iam --size <instance count> --instance-type <instance type> --vpc <vpc-id> --subnets <list of subnet ids> --security-group <security-group-ids>```
  - ```ecs-cli up --keypair sandy-us-west-1 --capability-iam --size 3 --instance-type t2.micro```
- DEPLOY COMPOSE FILE TO CLUSTER
  - ```ecs-cli compose --file docker-compose.yml up```
  - ```ecs-cli compose --file ../app/docker-compose.yml up```
  - ```ecs-cli compose --file ../db/docker-compose.yml up```
- VIEW RUNNING CONTAINER IN CLUSTER
  - ```ecs-cli ps```

- SCALE YOUR APPLICATION
  - ```ecs-cli compose --file docker-compose.yml scale <No. of conatiners>```
  - ```ecs-cli compose --file ../app/docker-compose.yml scale 3```

- STOP CONTAINERS
  - ```ecs-cli compose --file docker-compose.yml down```
  - ```ecs-cli compose --file ../app/docker-compose.yml up```
  - ```ecs-cli compose --file ../db/docker-compose.yml up```

- MAKE SERVICE OF THE COMPOSE FILE SO THAT IT CAN BE START OR STOPED
  - ```ecs-cli compose --file docker-compose.yml service up```
  - ```ecs-cli compose --file ../app/docker-compose.yml service up```
  - ```ecs-cli compose --file ../db/docker-compose.yml service up```

- DELETE THE CLUSTER
  - ecs-cli down --force
