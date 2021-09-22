#!/bin/bash

curl -w @- -o /dev/null -s "$@" <<'EOF'
 res:  %{time_starttransfer}\n
EOF
curl -w @- -o /dev/null -s "$@" <<'EOF'
 res:  %{time_starttransfer}\n
EOF
curl -w @- -o /dev/null -s "$@" <<'EOF'
 res:  %{time_starttransfer}\n
EOF
curl -w @- -o /dev/null -s "$@" <<'EOF'
 res:  %{time_starttransfer}\n
EOF
