FROM ubuntu:22.04

# config
COPY ./config/apache2.conf /config/apache2.conf 
COPY ./config/php.ini /config/php.ini
COPY ./config/.htaccess /config/.htaccess

# scripts
COPY ./scripts/build.sh /scripts/build.sh
COPY ./scripts/package-install.sh /scripts/package-install.sh
COPY ./scripts/download_mediawiki.sh /scripts/download_mediawiki.sh
COPY ./scripts/Load_apache_modules.sh /scripts/Load_apache_modules.sh
COPY ./scripts/change_config.sh /scripts/change_config.sh
COPY ./scripts/run.sh /scripts/run.sh

ENV TZ=Asia/Tokyo
RUN sh /scripts/build.sh
RUN chmod +x /scripts/run.sh

ENTRYPOINT [ "/scripts/run.sh" ]