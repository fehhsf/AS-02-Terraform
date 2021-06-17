sudo apt update
sudo apt install -y mysql-server-5.7
sudo cp -f c:/mysql/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
sudo mysql < c:/mysql/script.sql
sudo systemctl restart mysql.service
sleep 30