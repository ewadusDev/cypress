pipeline {
  agent {
    // this image provides everything needed to run Cypress
    docker {
      image 'cypress/base:latest'
    }
  }

  stages {
    stage('build and test') {
      environment {
      }

      steps {
        sh 'npm ci'
        sh "npx cypress run"
      }
    }
  }
}