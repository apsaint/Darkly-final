#!/bin/sh

wget -m -r --no-parent -e robots=off http://10.12.1.124/
find ./10.12.1.124 -name README | xargs cat | grep -E "^[A-Za-z0-9]+$"