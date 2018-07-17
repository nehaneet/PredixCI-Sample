#!/bin/bash 

# Unit test that always passes.
ruby statictest.rb

# Replace the color placeholder with the environment variable.
sed -i "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb


# Tarball
tar -cvf change_artifact.tar /usr/local/repos
cp change_artifact.tar /root
