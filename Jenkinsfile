pipeline {
  agent none

  def app

  stages {
    // stage('Clone repository') {
    //     /* Let's make sure we have the repository cloned to our workspace */
    //     steps {
    //       checkout scm
    //     }
        
    // }

    stage('Build image') {
      steps {
        app = docker.build("sjweath/react-test")
      }
    }

    stage('Test image') {
      steps {
        app.inside {
            sh 'ls -l'
        }
      }
    }

    stage('Push image') {
      steps {
        def packageJson = readJSON file: 'package.json'
        
        sh 'echo "${packageJson.version}"'

        docker.withRegistry('https://registry-vpc.cn-shanghai.aliyuncs.com', 'docker-hub-credentials') {
            app.push("0.1.5-build-${env.BUILD_NUMBER}")
            app.push("latest")
        }
      }
    }
  }
}