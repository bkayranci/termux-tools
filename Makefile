ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

install:
	test -L "${HOME}/.shortcuts" && echo "Symbolic link is already exists" || ln -s "${ROOT_DIR}/shortcuts" "${HOME}/.shortcuts"
