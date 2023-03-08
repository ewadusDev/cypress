pipeline {
    agent any

    tools { nodejs 'node' }

    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm i -save express'
            }
        }
        stage('Install Cypress') {
            steps {
                sh 'npm i cypress'
            }
        }
        
    }
}