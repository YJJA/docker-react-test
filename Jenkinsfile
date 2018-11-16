node {
  def app
  def packageJson

  stage('Clone repository') {
    checkout scm
  }

  stage('Build image') {
    app = docker.build("sjweath/react-test")
  }

  stage('Test image') {
    app.inside {
      sh 'ls -l'
    }
  }

  stage('Push image') {
    packageJson = readJSON file: 'package.json'
    echo packageJson.version

    docker.withRegistry('https://registry-vpc.cn-shanghai.aliyuncs.com', 'docker-hub-credentials') {
      app.push("${packageJson.version}-build.${env.BUILD_NUMBER}")
      app.push("latest")
    }
  }
}