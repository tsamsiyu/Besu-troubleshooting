
start:
	docker-compose up -d node1 node2 node3 node4

clear:
	docker-compose rm -s -f
	rm -rf ./data/*

logs-node1:
	docker-compose logs -f node1

logs-node2:
	docker-compose logs -f node2

logs-node3:
	docker-compose logs -f node3