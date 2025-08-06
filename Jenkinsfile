pipeline {
    agent any 
    stages {
        stage ('clone') {
            steps 
                {
                    echo 'Cloning source code'
                    git branch: 'main', url: 'https://github.com/N-QH/SpringMusicWeb.git'
                }
        }
    }
}
