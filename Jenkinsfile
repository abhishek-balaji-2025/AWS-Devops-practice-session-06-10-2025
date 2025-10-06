pipeline {
    agent {
        label 'jenkins-s1'
    }

    stages {
        stage ("git-checkout") {
            steps {
                git branch: 'main', url: 'https://github.com/abhishek-balaji-2025/AWS-Devops-practice-session-06-10-2025.git'
            }
        }

        stage ("Create docker image") {
            steps {
                sh 'docker built -t homepage:latest .'
            }
        }

        stage ("create docker container") {
            steps {
                sh 'docker run -it --name webapp -p 80:80 homepage:latest'
            }
        }

    }
}
