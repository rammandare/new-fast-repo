pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rammandare/DockerizeFastAPI.git']]])
            }
        }
        stage('checkout1') {
            steps {
                 'for i in `docker ps | awk {'print $1'} | sed '1d'`;do docker stop $i;done'
            }
        }   
   }
}
