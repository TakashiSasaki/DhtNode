prepare:
	sudo apt install doxygen
	sudo apt install libncurses5-dev
	sudo apt install libreadline-dev
	sudo apt install nettle-dev
	sudo apt install libgnutls28-dev
	#sudo apt install libargon2-0-dev
	sudo apt install libmsgpack-dev
	sudo apt install cython3
	sudo apt install python3-dev
	sudo apt install python3-setuptools
	sudo apt install build-essential
	sudo apt install cmake
	sudo apt install libpthread-workqueue-dev

clean:
	(cd opendht && git clean -dxf)
	(cd msgpack-c && git clean -dxf)

build:
	-(cd opendht; mkdir build)
	(cd opendht/build; cmake -DOPENDHT_PYTHON=ON -DCNAME_INSTALL_PREFIX=/usr/local ..)
	(cd opendht/build; make -j4)

build-msgpack:
	(cd msgpack-c; cmake -DMSGPACK_CXX11=ON .)
	(cd msgpack-c; make -j4)
	(cd msgpack-c; sudo make install)

uninstall-msgpack:
	-sudo apt remove libmsgpack3 libmsgpackc2 libmsgpack-dev

