FROM ubuntu:20.04

# config
COPY ./config/apache2.conf /config
COPY ./config/php.ini /config
COPY ./config/.htaccess /config

# sctipts
COPY ./sctipts/build.sh /sctipts
COPY ./sctipts/package-install.sh /sctipts
COPY ./sctipts/download_mediawiki.sh /sctipts
COPY ./sctipts/Load_apache_modules.sh /sctipts
COPY ./sctipts/change_config.sh /sctipts
COPY ./sctipts/run.sh /sctipts

ENV TZ=Asia/Tokyo
RUN sh ./sctipts/build.sh
RUN chmod +x /scrtipts/run.sh

ENTRYPOINT [ "/scripts/run.sh" ]