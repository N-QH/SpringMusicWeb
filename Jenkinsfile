pipeline {
    agent any
    tools {
        jdk 'JDK21'
        maven 'Maven 3.9.10'
    }
    stages {
        stage ('clone') {
            steps {
                echo 'Cloning source code'
                git branch: 'main', url: 'https://github.com/N-QH/SpringMusicWeb.git'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean install -X'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        
    }
}
