  pipeline {
    agent  {
  label  'node'
}
environment {
    AWS_ACCESS_KEY_ID= credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY=credentials('AWS_SECRET_ACCESS_KEY')
}
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/Deepali2002Jena/Jenkin-Terraform.git'
            }
        }
        stage('Terraform fmt') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform action') {
            steps {
                 echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve')
            }
        }
    }
}
