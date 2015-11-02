#!/bin/bash
if [ -f /config/riemann.config ]; then
  CONF_PATH=/config/riemann.config
else
  CONF_PATH=/opt/riemann-${VERSION}/etc/riemann.config
fi
/opt/riemann-${VERSION}/bin/riemann $CONF_PATH
