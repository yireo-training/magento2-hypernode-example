#!/bin/bash
docker-compose exec -it web bash -c 'echo "CREATE DATABASE IF NOT EXISTS magento; CREATE USER magento@localhost IDENTIFIED BY \"magento1234\"; GRANT ALL PRIVILEGEs ON magento.* TO magento@localhost;" | mysql'

