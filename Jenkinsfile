// pipeline {
//     agent any
//     stages {
//         stage('Welcome Step') {
//             steps { 
//                 echo 'Welcome to LambdaTest'
//             }
//         }
//     }
// }

pipeline {
    agent any
       tools {nodejs "Node16"}
    stages {
        stage('Welcome Step') {
            steps { 
                echo 'Welcome to Cypress'
            }
        }
          stage('node Version') {
            steps { 
                echo 'node version'
                bach 'node --version'

            }
        }
    }
}