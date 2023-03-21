#!/bin/bash
docker-compose exec -it web chown -R app:app /data/web/public /var/www
