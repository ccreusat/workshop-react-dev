install:
	mkdir -p node_modules
	docker-compose -p workshop run --rm app sh -c "npm rebuild esbuild && npm install"

start:
	docker-compose -p workshop up

clean:
	docker-compose -p workshop down
	rm -rf node_modules
	rm -rf package-lock.json

restart: clean install start