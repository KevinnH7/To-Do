dev:
	npm run dev

run:
	npm run start

build: 
	npm run build

docker-build:
	docker build . -t keenkevin/todo:latest
	docker push keenkevin/todo:latest

docker-run:
	docker run --rm -p 3000:3000 keenkevin/todo:latest