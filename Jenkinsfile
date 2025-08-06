pipeline {
    agent any
    tools {
        jdk 'JDK21'
        maven 'Maven 3.9.11'
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
                echo 'Building the project using Maven'
                bat 'mvn spring-boot:run'
            }
        }
        stage('Test') {
            steps {
                echo 'Running unit and integration tests'
                // Lệnh chạy test của Maven
                bat 'mvn test'
            }
            post {
                // Bước này sẽ chạy ngay sau khi stage hoàn tất
                // và thu thập các file báo cáo kết quả test
                always {
                    // Cú pháp của plugin JUnit để thu thập kết quả
                    // Maven sẽ tạo các file .xml trong thư mục này
                    junit '**/surefire-reports/*.xml'
                }
            }
        }
        stage('Deploy') {
        steps {
        echo 'Deploying the application'
        deploy adapters: [
            tomcat9(
                credentialsId: 'tomcat-credential-id',
                url: 'http://localhost:9188',
                path: 'target/*.war',
                update: true  // Thêm dòng này để cập nhật ứng dụng đã có sẵn
                    )
                ]
            }
        }
    }
}
