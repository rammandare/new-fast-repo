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
              sh 'sudo docker ps'
            }
        }
        stage('checkout2') {
            steps {
              sh 'sudo docker ps -a'
            }
        }
        stage('checkout3') {
            steps {
              sh 'sudo docker images'
            }
        }
        stage('checkout4') {
            steps {
              sh 'sudo for i in `docker ps | awk {'print $1'} | sed '1d'`;do sudo docker stop $i;done'
            }
        }   
   }
}
