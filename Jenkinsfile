pipeline {
    agent any 
    tools {
        jdk 'JDK21'
        maven 'Maven 3.9.5'

    }
    stages {
        stage ('clone') {
            steps 
                {
                    echo 'Cloning source code'
                    git branch: 'main', url: 'https://github.com/N-QH/SpringMusicWeb.git'
                }
        }
    }
    stage('Build') {
            steps {
                echo 'Building the project using Maven'
                // Chạy lệnh Maven để build ứng dụng và tạo file .war hoặc .jar
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application'
                // Tùy thuộc vào cách bạn muốn deploy (Docker, Tomcat,...)
                // Ví dụ: Deploy lên Tomcat
                deploy adapters: [
                    tomcat8(
                        credentialsId: 'tomcat-credential-id',
                        url: 'http://localhost:9188',
                        path: 'target/*.jar' // Hoặc target/*.jar nếu là Spring Boot
                    )
                ]
            }
        }
}
