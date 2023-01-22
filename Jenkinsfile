pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }
        stage('DeployToStaging') {
            when {
                branch 'main'
            }
            steps {
                withCredentials([usernamePassword(credentialsId: 'webserver_login', usernameVariable: 'USERNAME', passwordVariable: 'USERPASS')]) {
                    sshPublisher(
                        failOnError: true,
                        continueOnError: false,
                        publishers: [
                            sshPublisherDesc(
                                configName: 'staging',
                                sshCredentials: [
                                    username: "$USERNAME",
                                    password: "$USERPASS"
                                ], 
                                transfers: [
                                    sshTransfer(
                                        sourceFiles: '/var/lib/jenkins/test_1/jen.txt',
                                        remoteDirectory: '/tmp',
                                    )
                                ]
                            )
                        ]
                    )
                }
            }
        }
    }
}
