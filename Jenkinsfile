pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rammandare/DockerizeFastAPI.git']]])
            }
        }
        stage('build') {
            steps {
              sh 'sudo apt update'
              sh 'sudo apt install apt-transport-https ca-certificates curl software-properties-common -y'
              sh 'sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -'
              sh 'sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"'
              sh 'sudo apt update -y'
              sh 'sudo apt-cache policy docker-ce'
              sh 'sudo apt install docker-ce -y'  
              sh 'sudo apt install docker-compose -y'     
              sh 'sudo docker run -d -p 9090:9090 -v /var/lib/jenkins/workspace/api-1/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus'
              sh 'sudo docker run -d -p 3000:3000 grafana/grafana'
              sh 'sudo docker-compose build'
              sh 'sudo docker-compose up -d'
              sh 'sleep 10'
            }
        }
    }
}
