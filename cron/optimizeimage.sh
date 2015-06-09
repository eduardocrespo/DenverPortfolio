#!/bin/sh
find /apps/DenverPortfolio/web/uploads -iname "*.png" -exec optipng -o7 {} \;
