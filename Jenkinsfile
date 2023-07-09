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
   }
}
