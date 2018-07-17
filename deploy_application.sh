#!/bin/bash

export HOME=/root

cd /root

tar -xvf change_artifact.tar && rm change_artifact.tar

cd usr/local/repos

echo "----"
echo "Installing CF CLI"
echo "----"

chmod +x ./install_cf_cli.sh
./install_cf_cli.sh

echo "----"
echo "Configure CF ENV"
echo "----"

chmod +x ./configure_cf_cli.rb
./configure_cf_cli.rb

echo "----"
echo "Deploying to CF"
echo "----"

set +x

cf target -o solanolabs -s prod
cf push --random-route
