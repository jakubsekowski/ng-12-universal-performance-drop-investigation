#!/bin/bash

cd slow
npm run build:ssr
npm run serve:ssr &
cd ..
cd fast
npm run build:ssr
npm run serve:ssr &