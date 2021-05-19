DOCKERCOMPOSE 	?= $(shell which docker-compose)
XDGOPEN					?= $(shell which xdg-open)
PYTHON 					?= $(shell which python)
NAVIGATOR				?= $(if $(PYTHON),$(PYTHON) -m webbrowser,$(XDGOPEN))

all: setup run
setup:
	$(DOCKERCOMPOSE) build
run:
	$(NAVIGATOR) http://127.0.0.1:3000
	$(DOCKERCOMPOSE) up
down:
	$(DOCKERCOMPOSE) down