local="http://localhost:8080/ipfs/"
gway="http://gateway.ipfs.io/ipfs/"

PHONY: build clean

build:
	npm install foundation-sites
	mkdir -p src/foundation-sites/
	cp node_modules/foundation-sites/dist/css/foundation.min.css src/foundation-sites/
	cp node_modules/foundation-sites/dist/css/foundation-prototype.min.css src/foundation-sites/
	@echo "Done!";

publish:
	@echo "Our public site directory is:"
	du -sh public
	npm i ipfs-deploy
	npx ipfs-deploy public/

clean:
	@echo "Cleaning..."
	rm -rf node_modules/

