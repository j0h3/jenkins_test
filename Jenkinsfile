pipeline {
    agent { 
      docker {
        image 'terraform'
        args  '--entrypoint='
      }
    }
    
    options {
     withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-key', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
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
