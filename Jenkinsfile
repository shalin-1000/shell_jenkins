pipeline {
       agent any
       triggers {
        cron('H/5 * * * *')
       }
    
    stages {
        stage('Build') {
            steps {
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }
    }
}
