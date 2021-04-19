run:
	if [ !-d "elasticsearch/data" ]; then \
		mkdir elasticsearch/data; \
		chmod 777 elastalert/rule_templates \
		chmod 777 elastalert/rules \
		chmod 777 elasticsearch/data; \
	fi 
	docker-compose up

build:
	if [ !-d "elasticsearch/data" ]; then \
		mkdir elasticsearch/data; \
		chmod 777 elastalert/rule_templates \
		chmod 777 elastalert/rules \
		chmod 777 elasticsearch/data; \
	fi 
	docker-compose up --build

clean:
	sudo rm -rf elasticsearch/data
	docker container prune --force --filter "label=project=docker-elk-oss"
	mkdir elasticsearch/data
	chmod 777 elasticsearch/data