local="http://localhost:8080/ipfs/"
gway="http://gateway.ipfs.io/ipfs/"

PHONY: build

build:
	npm install foundation-sites
	mkdir -p src/foundation-sites/
	cp node_modules/foundation-sites/dist/css/foundation.min.css src/foundation-sites/
	cp node_modules/foundation-sites/dist/css/foundation-prototype.min.css src/foundation-sites/

clean:
	@echo "Cleaning..."
	rm -rf node_modules/

install:
	npm install foundation-sites http-server ipfs-deploy