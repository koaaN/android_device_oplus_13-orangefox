#!/sbin/sh

# Make sure the directories exist
mkdir -p /tmp/vendor/touch1
mkdir -p /tmp/vendor/touch1config

# Copy the data
cp -a /data/vendor/touch/. /tmp/vendor/touch1/
cp -a /data/vendor/touchconfig/. /tmp/vendor/touch1config/

