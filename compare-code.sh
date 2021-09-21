#!/bin/bash

clear
diff -qr -x node_modules -x dist -x package-lock.json -x server.ts fast slow
