FROM php:7-apache-bullseye

COPY ./dokuwiki_download_plugin.sh /root/dokuwiki_download_plugin

# Tools
RUN apt update
RUN apt install unzip

# Dokuwiki
WORKDIR /var/www/html

RUN curl --remote-name https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz
RUN tar -xzvf dokuwiki-*.tgz --strip-components=1
RUN rm dokuwiki-*.tgz
RUN chown -R www-data:www-data /var/www

# Install plugins
WORKDIR /var/www/html/lib/plugins

# ImgPaste Plugin - https://www.dokuwiki.org/plugin:imgpaste
RUN sh /root/dokuwiki_download_plugin https://github.com/cosmocode/dokuwiki-plugin-imgpaste/zipball/master imgpaste

# Diagrams Plugin - https://www.dokuwiki.org/plugin:diagrams
RUN sh /root/dokuwiki_download_plugin https://github.com/cosmocode/dokuwiki-plugin-diagrams/zipball/master diagrams

# Prosemirror Plugin - https://www.dokuwiki.org/plugin:prosemirror
RUN sh /root/dokuwiki_download_plugin https://github.com/cosmocode/dokuwiki-plugin-prosemirror/zipball/release prosemirror

# Edit Table Plugin - https://www.dokuwiki.org/plugin:edittable
RUN sh /root/dokuwiki_download_plugin https://github.com/cosmocode/edittable/archive/master.zip edittable

# Copy Code Plugin - https://www.dokuwiki.org/plugin:copycode
RUN sh /root/dokuwiki_download_plugin https://github.com/nicolasprigent/Dokuwiki-Copycode-plugin/archive/master.zip copycode


# Install templates
WORKDIR /var/www/html/lib/tpl

# Bootstrap 3 Template - https://www.dokuwiki.org/template:bootstrap3
RUN sh /root/dokuwiki_download_plugin https://github.com/LotarProject/dokuwiki-template-bootstrap3/zipball/master bootstrap3