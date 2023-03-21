#!/bin/bash
docker-compose exec -it web bash -c "hypernode-manage-vhosts --type magento2 --webroot /data/web/public/pub -y magento.local"

