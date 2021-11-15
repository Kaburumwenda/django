pipeline {
    agent any
    environment {
        registry = "482838254892.dkr.ecr.us-east-2.amazonaws.com/django"
    }
    stages {
        stage('start') {
            steps {
                echo 'start Building..'
                echo 'application buld start successfully'
            }
        }
        stage('docker build') {
            steps {
                echo 'building..'
                script {
                  dockerImage = docker.build registry
                }
            }
        }
        stage('push to Amazon ECR') {
            steps {
                script{
                    sh 'aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 482838254892.dkr.ecr.us-east-2.amazonaws.com'
                    sh 'docker tag django:latest 482838254892.dkr.ecr.us-east-2.amazonaws.com/django:latest'
                    sh 'docker push 482838254892.dkr.ecr.us-east-2.amazonaws.com/django:latest'
                }
            }
        }
    }
}