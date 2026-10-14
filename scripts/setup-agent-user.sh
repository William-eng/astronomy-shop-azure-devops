#!/bin/bash
set -euo pipefail

if id adoagent >/dev/null 2>&1; then
    echo "Agent user already exists"
else
    useradd --create-home --shell /bin/bash adoagent
    echo "Agent user created"
fi

install -d -o adoagent -g adoagent -m 750 /home/adoagent/azagent

echo "=== User verification ==="
id adoagent

echo "=== Directory verification ==="
ls -ld /home/adoagent/azagent
