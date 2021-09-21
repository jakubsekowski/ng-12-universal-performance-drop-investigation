#!/bin/bash

clear
diff -qr -x node_modules -x dist fast slow
