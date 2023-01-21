pipeline {
       triggers {
        cron('H/5 * * * *')
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }
    }
}
