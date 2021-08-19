pipeline {
    agent any

    stages {
        stage ('Git Checkout') {

            steps {
                git branch: 'develop', credentialsId: '123', url: 'https://github.com/kgummaraju/Jenkins_Spring.git'
                }
            }
        }
}
