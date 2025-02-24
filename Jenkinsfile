
pipeline {
    agent any

    environment {
        TF_WORKING_DIR = "."  // ✅ Fetches Terraform files from root
    }

    stages {
        stage('Checkout Code') {
            steps {
                cleanWs()  // Ensures a fresh repo pull
                git branch: 'main', url: 'https://github.com/kondawar2005/terraform-aws-pipeline.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir(TF_WORKING_DIR) {
                    sh 'terraform init -reconfigure'  // ✅ Fixes backend issue
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir(TF_WORKING_DIR) {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir(TF_WORKING_DIR) {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }

    post {
        success {
            echo "Terraform Deployment Successful! ✅"
        }
        failure {
            echo "Terraform Deployment Failed! ❌"
        }
    }
}
