echo "install mysql5.7"
echo "pull mysql image"
docker pull mysql:5.7
mkdir -p ~/docker/data/mysql5.7/{conf,dbdata}
echo "add config file"

echo "[mysql]
default-character-set=utf8

[mysqld]
character-set-server=utf8
lower_case_table_names=1

skip-host-cache
skip-name-resolve">~/docker/data/mysql5.7/conf

echo "start mysql"
docker run --name mysql -p 3306:3306 -v ~/docker/data/mysql5.7/conf:/etc/mysql/conf.d -v ~/docker/data/mysql5.7/dbdata:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7