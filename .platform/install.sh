#sudo amazon-linux-extras install epel
#sudo yum install certbot
#sudo yum install python-certbot-apache
#  this command updates all packages to the latest version
sudo yum update -y

# this command installs MySQL server on your machine, it also creates a systemd service
sudo yum install -y mariadb-server

# this command enables the service created in previous step
sudo systemctl enable mariadb

# this command starts the MySQL server service on your Linux instance
sudo systemctl start mariadb

# this command helps you to set root user password and improve your DB security
sudo mysql_secure_installation
#sudo certbot certonly --standalone -d chrome.neolen.xyz
#sudo mv /etc/letsencrypt/live/chrome.neolen.xyz /etc/letsencrypt/live/ebcert
#sudo yum install redis
#sudo systemctl start redis.service
#cd /var/app/current/
#source ../venv/staging-LQM1lest/bin/activate
#screen
#python manage.py qcluster
#EDITOR=/bin/nano crontab -e

#0 10 * * * rm -r /var/app/current/media/images/
#0 10 * * * rm -r /var/app/current/media/voices/
#crontab -l