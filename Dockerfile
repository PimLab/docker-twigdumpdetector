FROM php:7.2-cli-stretch

RUN apt-get update && apt-get install -y libssl-dev git bash rsync openssh-client;

RUN curl -O https://dl.pimlab.de/twigdumpdetector/twig-dump-detector.phar \
    && chmod +x twig-dump-detector.phar \
    && mv twig-dump-detector.phar /usr/bin/twig-dump-detector;

RUN printf "# twig-dump-detector php cli ini settings\n\
memory_limit=-1\n\
" > $PHP_INI_DIR/php-cli.ini

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/bin/bash", "/docker-entrypoint.sh"]

CMD ["twig-dump-detector"]