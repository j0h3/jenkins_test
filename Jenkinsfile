properties([pipelineTriggers([githubPush()])])

pipeline {
    agent { 
      docker {
        image 'hashicorp/terraform'
        args  '--entrypoint='
      }
    }
    
    stages {
        stage('Init Terraform directory') {
            steps {
                sh 'terraform init -backend-config=backend.tfvars'
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
