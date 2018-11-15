pipeline {
  agent any
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