#!groovy
@Library("ace") _
@Library("ace-example-config") import no.ace.AceGlobalConfig

ace(AceGlobalConfig) {
  stage('Build') {
    image = docker.build ace.dockerImage, '--pull .'
  }

  stage('Push') {
    // image.push()
  }

  stage('Deploy') {
    deploy('test', [dryrun: true])

    slack.notifyDeploy('test')
  }
}
