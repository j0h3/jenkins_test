pipeline {
  agent {
    docker {
        image 'hashicorp/terraform:light'
        args '--entrypoint='
    }
  }
  stages {
    stage('execute') { 
        steps {
            sh 'terraform --version' 
        }
    }
  }
}

