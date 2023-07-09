pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rammandare/DockerizeFastAPI.git']]])
            }
        }
     
    stage('Dangling Containers')
            {
            steps {
      sh 'docker ps -q -f status=exited | xargs --no-run-if-empty docker rm'
    }
        }
    stage('Dangling Containers')
        {
        steps {
      sh 'docker ps -q -f status=exited | xargs --no-run-if-empty docker rm'
    }
        }
    
    stage('Dangling Images') {
        steps {
      sh 'docker images -q -f dangling=true | xargs --no-run-if-empty docker rmi'
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
