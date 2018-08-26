#!/bin/sh

# Generate config from template
confd -onetime -backend env

# Print output
echo ---------------------------
cat /etc/my-app.yml
