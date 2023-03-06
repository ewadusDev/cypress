pipeline {
  agent {
    // this image provides everything needed to run Cypress
    docker {
    image 'cypress/included:12.7.0'
    }
  }

  stages {
    stage('build and test') {
      environment {
        CYPRESS_trashAssetsBeforeRuns = 'false'
      }

      steps {
        sh "npx cypress run"
      }
    }
  }
}