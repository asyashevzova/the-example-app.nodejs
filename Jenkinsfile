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
                sh 'mkdir /var/www/html/nodeapp && cp ./* /var/www/html/nodeapp' 
            }
        }
    }
}
