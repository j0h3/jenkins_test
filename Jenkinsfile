pipeline {
    agent { dockerfile true }
    
    options {
      withCredentials(awsCredentials)
      timestamps()
    }

    environment {
      AWS_REGION = "eu-west-3"
    }

    stages {
        stage('Init Terraform directory') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan terraform code') {
            steps {
                sh 'terraform plan'
            }
        }
	stage('Apply terraform code') {
	   steps {
               sh 'terraform apply -auto-approve'
	   }
	}
    }
}
