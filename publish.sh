#!/bin/sh
cd "$(dirname "$0")"
git add .
git commit -m "Site changes"
git push
