pipeline {
    agent any

    environment { 
        JENKINS_NODE_COOKIE="${dontKillMe /usr/bin/node}"
    } 
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
                    npm run start:dev &
                '''
            }
        }
    }
}
