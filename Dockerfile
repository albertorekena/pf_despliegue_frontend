FROM debian:latest

LABEL org.opencontainers.image.authors="albertorequena.alu@iespacomolla.es"

# Instalación de apache2
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y apache2

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]