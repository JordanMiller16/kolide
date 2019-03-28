#!/bin/bash

osqueryd --config_plugin=tls --tls_hostname=fleet.ir.cfasec.com --enroll_tls_endpoint=/api/v1/osquery/enroll --config_tls_endpoint=/api/v1/osquery/config --config_refresh=10 --enroll_secret_path=/etc/fleet/secret --daemonize --force
