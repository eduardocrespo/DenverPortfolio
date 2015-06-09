#!/bin/sh
find /apps/DenverPortfolio/web/uploads -iname "thumb_133_default_big.png" -exec optipng -o7 {} \;
