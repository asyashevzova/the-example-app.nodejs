pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'npm install'
            }
        }
        stage('Test') { 
            steps {
                sh 'npm run test:unit && npm run test:integration'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'sudo mkdir /var/www/html/nodeapp && sudo cp ./* /var/www/html/nodeapp' 
            }
        }
    }
}
