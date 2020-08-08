.PHONY: apt-get install-http_parser install-restinio
.ONESHELL:

restinio-0.6.8.1-full.tar.bz2:
	wget -nd -nH https://github.com/Stiffstream/restinio/releases/download/v.0.6.8.1/restinio-0.6.8.1-full.tar.bz2

restinio-0.6.8.1/: restinio-0.6.8.1-full.tar.bz2
	tar jxvf $<

install-restinio: restinio-0.6.8.1/
	cd $</dev
	patch -p1 < ../$<.patch
	mkdir -p build
	cd build
	cmake ..
	make
	make test
	make install

http_parser-2.9.3.tar.gz:
	wget -nd -nH https://github.com/binarytrails/http_parser/archive/v2.9.3.tar.gz -O $@

http_parser-2.9.3/: http_parser-2.9.3.tar.gz
	tar zxvf $<

install-http_parser: http_parser-2.9.3/
	cd $<
	make uninstall
	make
	make test
	make install

apt-get:
	apt-get update
	apt-get upgrade -y
	apt-get install -y wget
	apt-get install -y binutils 
	apt-get install -y cmake
	apt-get install -y cython3
	apt-get install -y g++
	apt-get install -y graphviz
	apt-get install -y libargon2-dev
	apt-get install -y libasio-dev
	apt-get install -y libcppunit-dev
	apt-get install -y libfmt-dev
	apt-get install -y libgnutls28-dev
	apt-get install -y libjsoncpp-dev
	apt-get install -y libmsgpack-dev
	apt-get install -y libpcre2-dev
	apt-get install -y libpcre3-dev
	apt-get install -y libpcre++-dev
	apt-get install -y libreadline-dev
	apt-get install -y pkg-config
	apt-get install -y python3-dev
	apt-get install -y python3-setuptools
	apt-get install -y zlib1g-dev

