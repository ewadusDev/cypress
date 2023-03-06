pipeline {
    agent {
        docker {
            image 'ewadus/cypress:1.0.0'
        }
    }
    stages {
        stage('test') {
            steps {
                sh "npm install"
                sh "npm run test:ci"
            }
        }
    }
}