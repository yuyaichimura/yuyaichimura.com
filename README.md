# yuyaichimura.com
Portfolioi


##Deploy using docker
sudo docker run -d -p 80:80 -p 443:443 -v /home/yuya/yuyaichimura.com/public/:/var/www/html/ -v /home/yuya/yuyaichimura.com/Caddyfile:/etc/caddy/Caddyfile -e "CADDYPATH=/etc/caddycerts" -v /home/yuya/.caddy:/etc/caddycerts caddy

# Development
prod
hugo -b http://yuyaichimura.com

docker-compose
hugo -b http://localhost:8089


