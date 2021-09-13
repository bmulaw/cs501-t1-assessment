#!/bin/bash

# will use ProductionConfig bc its being deployed
export FLASK_APP=project.server
export APP_SETTINGS="project.server.config.ProductionConfig"
# don't need to init a db
flask db migrate
flask db upgrade
#flask run --host=0.0.0.0 --port=5000
