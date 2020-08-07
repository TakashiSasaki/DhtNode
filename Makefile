.PHONY: apt-get

apt-get:
	apt-get update
	apt-get upgrade -y
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

