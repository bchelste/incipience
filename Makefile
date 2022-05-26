DC		= docker-compose

YML		= -f srcs/docker-compose.yml

.PHONY: all ps build logs up down destroy re volume network evaluation

all:			build
			$(DC) $(YML) up -d
ps:
			$(DC) $(YML) ps
build:
			$(DC) $(YML) build
logs:			
			$(DC) $(YML) logs
up:
			$(DC) $(YML) up -d
down:
			$(DC) $(YML) down
destroy:
			$(DC) $(YML) down -v
re:
			$(DC) $(YML) down
			$(DC) $(YML) build
			$(DC) $(YML) up -d

volume:			
			docker volume ls

network:
			docker network ls

evaluation:	
			docker stop $$(docker ps -qa); \
			docker rm $$(docker ps -qa); \
			docker rmi -f $$(docker images -qa); \
			docker volume rm $$(docker volume ls -q); \
			docker network rm $$(docker network ls -q) 2>/dev/null


