pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'sh \'mvn package\''
      }
    }

    stage('build docker image') {
      steps {
        sh '''echo "from centos" > Dockerfile
echo " run yum install httpd -y" >> Dockerfile

docker build -t immm .'''
      }
    }

    stage('cerate a container') {
      steps {
        sh 'docker run -itd -p 99:80 --name sss immm'
      }
    }

  }
}