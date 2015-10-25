#!/bin/sh
date;
find /apps/DenverPortfolio/web/uploads -iname "*.png" -exec optipng -o7 {} \;
date;
