pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rammandare/DockerizeFastAPI.git']]])
            }
        }
     
        stage('Dangling Containers1') {
            steps {
          sh 'for i in `docker ps | awk {'print $1'} | sed '1d'`;do docker stop $i;done'
            }
        }
        stage('Dangling Containers2') {
           steps {
          sh 'for i in `docker ps -a | awk {'print $1'} | sed '1d'`;do docker rm $i;done'
           }
        }
    
        stage('Dangling Images') {
           steps {
           sh 'for i in `docker images | awk {'print $3'} | sed '1d'`;do docker image rm $i;done'
           }
        }
        stage('build') {
            steps { 
            sh 'sudo docker run -d -p 9090:9090 -v /var/lib/jenkins/workspace/api-1/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus'
            sh 'sudo docker run -d -p 3000:3000 grafana/grafana'
            sh 'sudo docker-compose up -d'
            sh 'sleep 10'
            }
        }
   }
}
