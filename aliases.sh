#!/bin/bash -i 

chmod a+x ~/.bash_profile

echo "alias netin='sudo emacs /etc/network/interfaces'" >> ~/.bash_profile

echo "alias leases='tail -f /var/lib/misc/dnsmasq.leases'" >> ~/.bash_profile

echo "alias log='tail -f /var/log/syslog'" >> ~/.bash_profile

echo "alias renet='sudo service networking restart; sudo service networking status;q'" >> ~/.bash_profile

echo "alias hgrep='history | grep "\""$@"\""'" >> ~/.bash_profile

echo "alias remasq='sudo service dnsmasq restart; service dnsmasq status;q'" >> ~/.bash_profile

. ~/.bash_profile
kill -HUP $PPID