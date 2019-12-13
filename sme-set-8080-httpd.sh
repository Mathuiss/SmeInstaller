#! /bin/bash
echo "Listen 0.0.0.0:8080" > /etc/e-smith/templates-custom/etc/httpd/conf/httpd.conf/35Listen80
echo "
NameVirtualHost 0.0.0.0:8080
NameVirtualHost 0.0.0.0:443
" > /etc/e-smith/templates-custom/etc/httpd/conf/httpd.conf/80NameVirtualHosts

cat on8080 > /etc/e-smith/templates-custom/etc/httpd/conf/httpd.conf/80VirtualHosts

expand-template /etc/httpd/conf/httpd.conf
cat -n /etc/httpd/conf/httpd.conf | grep Listen
cat -n /etc/httpd/conf/httpd.conf | grep VirtualHost
/etc/rc.d/init.d/httpd-e-smith restart
sleep 2
/etc/rc.d/init.d/nginx start
