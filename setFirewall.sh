

sudo iptables -I INPUT -p tcp --dport 10080 -j ACCEPT

sudo iptables -I INPUT -p tcp --dport 10443 -j ACCEPT

sudo iptables -I INPUT -p tcp --dport 10022 -j ACCEPT
