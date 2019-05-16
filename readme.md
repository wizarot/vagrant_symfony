# 基于 Homestead v8.4.0修改的开发环境

php 版本增加,因为公司项目php版本很多,所以旧版本还要保留着

## 安装使用

### 安装

- 安装VitrualBox: https://www.virtualbox.org/wiki/Downloads
- 安装Vagrant: https://www.vagrantup.com/downloads.html
- 在本脚本进行配置安装: 
	```bash
		$ bash init.sh
	```
- 找我下载安装box文件,我这里还没来得及上传公开,目前测试阶段
- 导入box文件(可以根据实际情况修改): vagrant box add symfony2 dev2.box 
- 根据网站情况修改配置文件(项目例子见后面): Homestead.yaml

### 使用

- 启动box: vagrant up
- 重启: vagrant reload
- 重启并更新配置文件数据: vagrant reload --provision
- 停止box: vagrant halt
- 本机访问网站:  编辑 sudo vi /etc/hosts : 192.168.10.10 id-application.test.com
- mysql数据库:  host: 192.168.10.10 port: 33060 user: homestead password: secret


## Homestead.yaml配置列子:

```bash
folders:
    - map: ~/php_productions
      to: /home/vagrant/code

sites:
    - map: id-application.test.com
      to: /home/vagrant/code/id-application/web
      php: "7.0"
      type: "symfony2"
```

- folders 将主机磁盘映射到虚拟机
- sites 网站设置, map域名 to服务器web目录 php版本 type:可选项目类型 apigility， expressive， laravel (默认类型)， proxy， silverstripe， statamic， symfony2， symfony4，和 zf
