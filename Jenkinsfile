pipeline {
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
