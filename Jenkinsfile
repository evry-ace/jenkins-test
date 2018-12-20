#!groovy
@Library("ace") _

ace {
  stage('Build') {
    dockerBuild()
  }

  stage('Push') {
    dockerPush()
  }

  stage('Deploy') {
    deploy('test')

    slack.notifyDeploy('test')
  }
}
