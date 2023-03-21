# Example docker-compose stack for Magento 2 Hypernode

**This `docker-compose` stack uses the Hypernode image to create a Magento shop. Instead of using just a single image, it
adds the Hypernode image to a `docker-compose` cluster so that ElasticSearch is added as well.**

## Usage
First, make sure to add a new host to your local `hosts` file (for example `/etc/hosts`):
```hosts
127.0.0.1 magento.local
```

Bring up the cluster:
```bash
docker-compose up -d
```

Check that everything is working with `docker-compose ps`. Navigate to http://localhost:8080 to confirm that it works.

Create a new database for Magento:
```bash
docker-bin/create-mysql-db.sh
```

Create a new Nginx virtual host:
```bash
docker-bin/create-vhost.sh
```

Fix permissions (?):
```bash
docker-bin/fix-permissions.sh
```

Login to the `web` container:
```bash
docker-bin/web-shell.sh
```

Within the `web` container, install Magento:
```bash
/opt/magento-bin/composer-install.sh
/opt/magento-bin/magento-install.sh
```

## Possible post-install steps
- Enable the Developer Mode
- Install sample data
- Disable 2 Factor Authentication
- Install Mage2TV cache cleaner
- Install MageSpecialist DevTools

## Possible improvements to the stack
- Add Redis
- Add `magerun2` to the image
