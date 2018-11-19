#!/bin/bash
## To update salt-minion via salt-bootstrap 

## install wget if not available
yum -y install wget

# Download and install latest salt-minion
cd /tmp && wget https://raw.githubusercontent.com/saltstack/salt-bootstrap/stable/bootstrap-salt.sh

/bin/bash /tmp/bootstrap-salt.sh

echo "message_values_list: uninstalled" >> /etc/salt/grains









