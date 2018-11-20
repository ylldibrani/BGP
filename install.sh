#!/bin/bash
	 yum install -y php 
	 yum search -y php 
	 yum install -y php-mysql php-gd php-imap php-ldap php-mbstring php-odbc php-pear php-xml php-xmlrpc 
	 yum install -y php-pecl-apc
	 /etc/init.d/httpd restart 
	 echo "Done."
	 clear
	 wget -q -O - http://www.atomicorp.com/installers/atomic |sh 
	 yum install php-ioncube-loader
	 /etc/init.d/httpd restart
	 echo "Done."
	 clear
	 yum install -y gcc php-devel php-pear libssh2 libssh2-devel make
	 pecl install -f ssh2
	 echo extension=ssh2.so > /etc/php.d/ssh2.ini
	 /etc/init.d/httpd restart
	 echo "Done."
	 clear
	 cd /var/www/html
	 wget https://raw.githubusercontent.com/ylldibrani/BGP/master/bgp.zip
	 unzip bgp.zip
	 rm -rf bgp.zip
	 echo "Done."
	 clear
	 yum remove mysql
	 rm -rf /var/lib/mysql
	 yum install mysql-server
	 /sbin/chkconfig --levels 235 mysqld on
	 service mysqld start
	 mysql_secure_installation
	 rm -rf install.sh
	     ;;
esac	 
