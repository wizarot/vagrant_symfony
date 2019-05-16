/usr/bin  生成软连接
/etc/php/ 下的php版本

apt-get install

卸载.. apt-get purge


安装:
apt-get install php7.0-fpm
apt-get install php-pear php7.0-dev php7.0-zip php7.0-curl php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-xml php7.0-redis
apt-get install php7.2-fpm
apt-get install php5.6-fpm


/etc/php# apt-get install php7.0-fpm
config file /etc/php/7.0/fpm/php.ini
symlink /etc/systemd/system/multi-user.target.wants/php7.0-fpm.service → /lib/systemd/system/php7.0-fpm.service.

vi /etc/php/7.0/fpm/pool.d/www.conf
修改下用户 vagrant
上传等配置放这里
vi /etc/php/7.0/fpm/php.ini

服务启动/停止:
service php7.2-fpm start/stop/restart

打包box: vagrant package
vagrant package --output package.box

vagrant init mybox/mybox --box-version 1.6.0

ubuntu刪除软件:
sudo apt-get purge php7.1
homestead.rb 中一些启动的脚本需要修改


导入box: vagrant box add dev package.box  #dev是自己设定的名字
启动: 
$ vagrant init my-box
$ vagrant up