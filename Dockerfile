FROM euskadi31/gentoo-php:latest

RUN echo "dev-php/pecl-uuid ~amd64" >> /etc/portage/package.keywords \
    echo "dev-php/pecl-redis ~amd64" >> /etc/portage/package.keywords \
    echo "dev-php/twig ~amd64" >> /etc/portage/package.keywords \
    echo "media-gfx/imagemagick jpeg" >> /etc/portage/package.use

RUN emerge dev-php/pecl-redis dev-php/pecl-imagick dev-php/pecl-geoip dev-php/pecl-apcu dev-php/pecl-uuid
