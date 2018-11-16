node {
  def app

  stage('Build image') {
    app = docker.build("sjweath/react-test")
  }

  stage('Test image') {
    app.inside {
      sh 'ls -l'
    }
  }

  stage('Push image') {
    def packageJson = readJSON file: 'package.json'

    sh 'echo "${packageJson.version}"'

    docker.withRegistry('https://registry-vpc.cn-shanghai.aliyuncs.com', 'docker-hub-credentials') {
      app.push("0.1.5-build-${env.BUILD_NUMBER}")
      app.push("latest")
    }
  }
}