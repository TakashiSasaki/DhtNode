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
	(cd oepndht; git clean -dxf)

build:
	-(cd opendht; mkdir build)
	(cd opendht/build; cmake -DOPENDHT_PYTHON=ON -DCNAME_INSTALL_PREFIX=/usr/local ..)
	(cd opendht/build; make -j4)

	
