#!/bin/bash

clear
diff -qr -x node_modules -x dist -x package-lock.json fast slow
