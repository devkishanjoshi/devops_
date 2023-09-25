pipeline{
    agent any
    
    stages{
        stage('SCM Checkout') {
            steps{
                git branch: 'ansible', changelog: false, credentialsId: 'github_user_password', poll: false, url: 'https://github.com/devkishanjoshi/devops_.git'
            }
        }
        stage('Execute Ansible'){
            steps {
                ansiblePlaybook credentialsId: 'ssh-ansible-worker', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts', playbook: 'webserver.yaml'
            }
        }
    }
}
