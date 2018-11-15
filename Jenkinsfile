pipeline {
  agent {
    node {
      label 'a'
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