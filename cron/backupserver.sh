#!/bin/bash
tar -czvpf /apps/DenverPortfolio/backups/server/$(date +%F).tar.gz / --exclude=proc --exclude=sys --exclude=dev/pts --exclude=/apps/DenverPortfolio/backups/server; 
