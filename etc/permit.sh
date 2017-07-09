#!/bin/bash
echo "Setting permissions to your project"

PROJECT="your_project"
USER="your_user"
GROUP="www-data" #your group

chmod -R 755 /var/www/$PROJECT

chmod -R 777 /var/www/$PROJECT/_config/config.envs.php
chmod -R 777 /var/www/$PROJECT/uploads

chmod -R 777 /var/www/$PROJECT/_cache
chmod -R 777 /var/www/$PROJECT/sjs-admin/_tpl/_cache

chmod -R 777 /var/www/$PROJECT/_tpl

chmod -R 777 /var/www/$PROJECT/blog/content

chown -R $USER:$GROUP /var/www

echo "Done"
