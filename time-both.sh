#!/bin/bash

curl -w @- -o /dev/null -s "127.0.0.1:4000" <<'EOF'
 slow:  %{time_starttransfer}\n
EOF
curl -w @- -o /dev/null -s "127.0.0.1:4000" <<'EOF'
 slow:  %{time_starttransfer}\n
EOF
curl -w @- -o /dev/null -s "127.0.0.1:4000" <<'EOF'
 slow:  %{time_starttransfer}\n
EOF

curl -w @- -o /dev/null -s "127.0.0.1:4100" <<'EOF'
 fast:  %{time_starttransfer}\n
EOF
curl -w @- -o /dev/null -s "127.0.0.1:4100" <<'EOF'
 fast:  %{time_starttransfer}\n
EOF
curl -w @- -o /dev/null -s "127.0.0.1:4100" <<'EOF'
 fast:  %{time_starttransfer}\n
EOF
