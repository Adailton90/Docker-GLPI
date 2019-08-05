# Docker-GLPI
<h2>Ferramenta de chamados GLPI em container Docker (Obs.: usei uma instancia EC2 na AWS com RDS como bando de dados, mas serve também para projetos em maquinas locais) com uma imagem ubuntu instalando Apache e PHP.
Usando pipeline Jenkins para build e deploy. 

<h3> Passo a passo do ambiente sendo montado no arquivo "Dockerfile", basta ter também a pasta "glpi" no memso diretório que o arquivo "Dockerfile". 
E com o arquivo "Jenkinsfile" através de uma configuração de webhook neste repositório github, toda vez que a um commit, ativa uma trigger no Jenkins que esta instalado(imagem docker) numa instancia na Amazon Web Services, e quadno ativada essa trigger ele faz checout neste repositório faz o build de da imagem docker baseado no "Dockerfile" e sobre um container onde o deploy é feito. 
