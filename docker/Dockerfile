FROM ubuntu:20.04

# config
COPY ./config/apache2.conf /config
COPY ./config/php.ini /config
COPY ./config/.htaccess /config

# scripts
COPY ./scripts/build.sh /scripts
COPY ./scripts/package-install.sh /scripts
COPY ./scripts/download_mediawiki.sh /scripts
COPY ./scripts/Load_apache_modules.sh /scripts
COPY ./scripts/change_config.sh /scripts
COPY ./scripts/run.sh /scripts

ENV TZ=Asia/Tokyo
RUN sh ./scripts/build.sh
RUN chmod +x /scrtipts/run.sh

ENTRYPOINT [ "/scripts/run.sh" ]