BOOTSTRAP=bootstrap.ring.cx
BOOTSTRAP_ALT=bootstrap.moukaeritai.work

help:
	@echo make prepare
	@echo make build-msgpack
	@echo make install-msgpack
	@echo make build-dhtnode
	@echo make install-dhtnode
	@echo make ldconfig
	@echo make run-dhtnode

prepare:
	sudo apt install doxygen
	sudo apt install libncurses5-dev
	sudo apt install libreadline-dev
	sudo apt install nettle-dev
	sudo apt install libgnutls28-dev
	#sudo apt install libargon2-0-dev
	sudo apt install cython3
	sudo apt install python3-dev
	sudo apt install python3-setuptools
	sudo apt install build-essential
	sudo apt install cmake
	sudo apt install libpthread-workqueue-dev
	sudo apt install graphviz graphviz-dev

clean:
	(cd opendht && git clean -dxf)
	(cd msgpack-c && git clean -dxf)

build-dhtnode:
	-(cd opendht; mkdir build)
	(cd opendht/build; cmake -DOPENDHT_PYTHON=ON -DCNAME_INSTALL_PREFIX=/usr/local ..)
	(cd opendht/build; make -j4)

install-dhtnode:
	(cd opendht/build; sudo make install)

build-msgpack:
	(cd msgpack-c; cmake -DMSGPACK_CXX11=ON .)
	(cd msgpack-c; make -j4)

install-msgpack:
	(cd msgpack-c; sudo make install)

uninstall-msgpack:
	-sudo apt remove libmsgpack3 libmsgpackc2 libmsgpack-dev

ldconfig:
	-sudo cp -i dhtnode.conf /etc/ld.so.conf.d
	-sudo ldconfig

run-dhtnode:
	dhtnode -b $(BOOTSTRAP) -v

#
# Takashi SASAKI 
# https://twitter.com/TakashiSasaki
# https://github.com/TakashiSasaki
#

