DC = docker compose
SERVICE=web
DCRUN = $(DC) run --rm
all: up

build:
	$(DC) build

down:
	$(DC) down --remove-orphans

up:
	$(DC) up $(SERVICE)

#app:
#	$(DCRUN) -p 8501:8501 $(SERVICE) streamlit run app.py

bash:
	$(DCRUN) $(SERVICE) bash

#black-server:
#	$(DCRUN) -p 45484:45484 -d $(SERVICE) poetry run blackd --bind-host 0.0.0.0
#
#jupyter:
#	$(DCRUN) -p 8888:8888 $(SERVICE) poetry run jupyter lab --ip 0.0.0.0 --no-browser --allow-root
#
#format:
#	$(PRUN) black validateai/
#	$(PRUN) isort validateai/ --profile black
