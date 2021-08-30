pipeline{
    agent any
    tools{
        maven 'maven-3.6.3'
    }
    stages{
        stage('Checkout SCM'){
            steps{
                git url: 'https://github.com/kgummaraju/Jenkins_Spring.git'
            }
        }
        stage('Build-Docker'){
            steps{
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
                sh "docker-compose build"
                sh "docker-compose up -d"
            }
        }
    }
}
