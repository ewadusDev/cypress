pipeline {
  docker {
    image 'cypress/included:12.7.0'
    }

   tools {nodejs "Node16"}

   environment {
       CHROME_BIN = '/bin/google-chrome'
      
   }

   stages {
       stage('Dependencies') {
           steps {
               sh 'npm i'
           }
       }
       stage('e2e Tests') {
         Parallel{
             stage('Test 1') {
                  steps {
                sh 'npx cypress run'
                  }
               }
             
             stage('Test 2') {
                  steps {
                sh 'npx cypress run'
                  }
               }

       }
       stage('Deploy') {
           steps {
               echo 'Deploying....'
           }
       }
   }
}