#!/bin/bash

WHOAMI=`whoami`
if [[ ! "$WHOAMI" == "root" ]]
then
    echo "ERROR!!!!!!! You must run this a root or use sudo. Aborting"
    exit -1
fi

sudo dpkg -i osquery.deb;
sudo dpkg -i /var/osquery/osqueryBinary.deb;

sudo osqueryd --config_plugin=tls --tls_hostname=fleet.ir.cfasec.com --enroll_tls_endpoint=/api/v1/osquery/enroll --config_tls_endpoint=/api/v1/osquery/config --config_refresh=10 --enroll_secret_path=/var/local/fleet --logger_min_status=3 --logger_min_stderr=2 --daemonize --force
