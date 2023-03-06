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
        CYPRESS_trashAssetsBeforeRuns = 'false'
      }

      steps {
        sh 'npm ci'
        sh "npx cypress run"
      }
    }
  }
}