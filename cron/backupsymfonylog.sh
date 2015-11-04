#!/bin/sh
if [ -f /apps/DenverPortfolio/app/logs/prod.log ]; then
mv /apps/DenverPortfolio/app/logs/prod.log /apps/DenverPortfolio/app/logs/$(date +%F).log;
tar -czf /apps/DenverPortfolio/app/logs/$(date +%F).log.tar.gz --directory=/apps/DenverPortfolio/app/logs $(date +%F).log;
rm /apps/DenverPortfolio/app/logs/$(date +%F).log;
mv /apps/DenverPortfolio/app/logs/$(date +%F).log.tar.gz /apps/DenverPortfolio/backups/logs;
fi
