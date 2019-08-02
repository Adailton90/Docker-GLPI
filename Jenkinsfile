node {    
    stage('Fazendo Checkout no repositorio git') {
        git 'https://github.com/Adailton90/Docker-GLPI.git'
    }
    stage('Build da imagem docker-glpi'){
        sh 'docker rmi -f docker-glpi || true'
        sh 'docker build -t docker-glpi .'
    }
    stage('Deploy: Subindo container do glpi'){
        sh 'dokcer rm -f container-glpi || true'
        sh 'docker run -d -p 8090:80 --name container-glpi docker-glpi'
    }
}
