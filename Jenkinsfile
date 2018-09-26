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
                sh '''
                    if [ ! -d /var/www/html/nodeapp ]
                    then
                    sudo mkdir /var/www/html/nodeapp
                    fi
                    sudo cp -r ./* /var/www/html/nodeapp
                    cd /var/www/html/nodeapp
                    bash startup.sh
                '''
            }
        }
    }
}
