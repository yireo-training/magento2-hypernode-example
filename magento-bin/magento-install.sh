#!/bin/bash
# 
# Note that this is intended to be run within the docker container "web"
cd /data/web/public/
php -d memory_limit=-1 bin/magento setup:install --base-url=http://magento.local:8080/ \
  --db-host=localhost --db-name=magento \
  --db-user=magento --db-password=magento1234 \
  --search-engine=elasticsearch7 --elasticsearch-host=es --elasticsearch-port=9200 \
  --admin-firstname=John --admin-lastname=Doe \
  --admin-email=johndoe@example.com \
  --admin-user=admin --admin-password=admin123 --language=en_US \
  --currency=USD --timezone=Europe/Amsterdam --cleanup-database \
  --sales-order-increment-prefix="ORD$" --session-save=db \
  --use-rewrites=1
