local="http://localhost:8080/ipfs/"
gway="http://gateway.ipfs.io/ipfs/"
public_dir=public

PHONY: build

build:
	npm install foundation-sites@6
	mkdir -p src/foundation-sites/
	cp node_modules/foundation-sites/dist/css/foundation.min.css "${public_dir}/foundation-sites/"
	cp node_modules/foundation-sites/dist/css/foundation-prototype.min.css "${public_dir}/foundation-sites/"

clean:
	@echo "Cleaning..."
	rm -rf node_modules/

install:
	npm install foundation-sites@6 http-server ipfs-deploy