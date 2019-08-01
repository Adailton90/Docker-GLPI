FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade

#Instalando apache
RUN apt-get install -y apache2
RUN rm /var/www/html/index.html 
COPY ./glpi var/www/html

#Instalando PHP e dependencias necessárias para GLPI
RUN apt-get install -y php libapache2-mod-php php-curl php-mysqli php-mbstring php-gd php-gd php-simplexml

#Copiando a pasta do GLPI para dentro do container
RUN chown -R www-data:www-data /var/www/html

EXPOSE  80

#Inciando o apache
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]


