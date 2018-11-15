pipeline {
  agent {
    docker {
      image 'node:8.9-alpine'
      args '-p 3000:3000 -p 5000:5000' 
    }
  }

  stages {
    stage('Build') {
      steps {
        sh 'npm install && npm build'
      }
    }
    stage('Test') {
      steps {
        sh 'echo \'Testing\''
      }
    }
    stage('Deploy') {
      steps {
        sh 'echo \'Deploy\''
      }
    }
  }
}