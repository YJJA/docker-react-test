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
    def packageJson = readJSON file: 'package.json', test: '{ "version": "value" }'
    docker.withRegistry('https://registry-vpc.cn-shanghai.aliyuncs.com', 'docker-hub-credentials') {
      app.push("${packageJson.version}-build-${env.BUILD_NUMBER}")
      app.push("latest")
    }
  }
}