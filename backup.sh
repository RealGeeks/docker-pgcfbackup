#!/bin/bash

NOW=$(date +"%Y-%m-%d")
FILE=$(hostname)-$NOW-$(date +"%H-%M-%S").sql.gz

pg_dumpall > $FILE

swift -A https://auth.api.rackspacecloud.com/v1.0 -U $CLOUDFILES_USERNAME -K $CLOUDFILES_APIKEY upload $CLOUDFILES_CONTAINER $FILE
