PRODUCT = build/srp-client.js

all: $(PRODUCT)

clean: 
	rm -rf build

build/srp-client.js: build.sh lib/*.js src/srp-client.js
	@-mkdir build
	sh build.sh
