#######
# Hugo
#######
FROM alpine:3.18.2 AS build

RUN apk add --update hugo
WORKDIR /opt/hugo
COPY . .
RUN hugo --minify --enableGitInfo



#######
# Caddy
#######

FROM caddy:2.7.2
COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=build /opt/hugo/public /var/www/html
