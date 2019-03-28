#!/bin/bash

sudo su;
dpkg -i osquery.deb;
dpkg -i /var/osquery/osqueryBinary.deb;

osqueryd --config_plugin=tls --tls_hostname=fleet.ir.cfasec.com --enroll_tls_endpoint=/api/v1/osquery/enroll --config_tls_endpoint=/api/v1/osquery/config --config_refresh=10 --enroll_secret_path=/var/local/fleet --daemonize --force
