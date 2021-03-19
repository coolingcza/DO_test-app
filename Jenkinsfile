pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git([url: 'https://github.com/coolingcza/DO_test-app.git', branch: 'master', credentialsId: '0f835c13-1486-461a-b69e-6f69762100a3'])
      }
    }
    stage('Build Image') {
      steps {
        script {
          dockerImage = docker.build devops-test-app
        }
      }
    }
/*    stage('Deploy Image') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push("$BUILD_NUMBER")
            dockerImage.push('latest')
          }
        }
      }
    }
    stage('Remove Unused Image') {
      steps {
        sh "docker rmi $imagename:$BUILD_NUMBER"
        sh "docker rmi $imagename:latest"
      }
    }*/
  }
}
