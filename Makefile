
all: lint

lint: update_header_files
	pod lib lint --allow-warnings

update_header_files:
	cd yajl && ./configure
	cp -v yajl/build/yajl-*/include/yajl/*.h include/yajl
