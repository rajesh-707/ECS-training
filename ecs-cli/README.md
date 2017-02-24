# MAKE COMMANDS

BUILD DOCKER IMAGE

* make build

RUN CONTAINER

* make run

CONFIGURE CONTAINER WITH ECS-CLI

* make configure


# ECS-CLI COMMANDS

CREATE A CLUSTER

 * ecs-cli up --keypair <keypair> --capability-iam --size <instance count> --instance-type <instance type> --vpc <vpc-id> --subnets <list of subnet ids> --security-group <security-group-ids>

DEPLOY COMPOSE FILE TO CLUSTER

* ecs-cli compose --file docker-compose.yml up

VIEW RUNNING CONTAINER IN CLUSTER

* ecs-cli ps

SCALE YOUR APPLICATION

* ecs-cli compose --file docker-compose.yml scale <No. of conatiners>

STOP CONTAINERS

* ecs-cli compose --file docker-compose.yml down

MAKE SERVICE OF THE COMPOSE FILE SO THAT IT CAN BE START OR STOPED

* ecs-cli compose --file docker-compose.yml service up

DELETE THE CLUSTER

* ecs-cli down --force
