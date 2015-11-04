#!/bin/sh
mysqldump -u'root' -p'password' symfony > /apps/DenverPortfolio/backups/sql/$(date +%F).sql;
tar -czf /apps/DenverPortfolio/backups/sql/$(date +%F).tar.gz --directory=/apps/DenverPortfolio/backups/sql $(date +%F).sql;
rm /apps/DenverPortfolio/backups/sql/$(date +%F).sql;
