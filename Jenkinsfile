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
                withCredentials([sshUserPrivateKey(credentialsId: 'webserver_login', keyFileVariable: 'KEY_FILE', usernameVariable: 'USERNAME')]) {
                    sshPublisher(
                        failOnError: true,
                        continueOnError: false,
                        publishers: [
                            sshPublisherDesc(
                                configName: 'staging',
                                sshCredentials: [
                                    username: "$USERNAME",
                                    privateKey: "$KEY_FILE"
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
