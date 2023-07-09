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
        
        
   }
}
