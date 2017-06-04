#!/bin/bash

# check if there exist default site configs
if [[ ! /etc/apache2/sites-enabled/001-default.conf ]]; then
    cp /etc/apache2/sites-available/001-default /etc/apache2/sites-enabled/001-default.conf
fi

source /etc/apache2/envvars
exec apache2 -D FOREGROUND
