.PHONY: default help run clean

CC = gcc
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

default: test

help:
	@echo 'Usage:'
	@echo '  make test			run tests in freetests.py'

test: freetests.py
	python3.6 freetests.py
