try {
   timeout(time: 20, unit: 'MINUTES') {
      node() {
          stage('build') {
            openshiftBuild(buildConfig: 'slawek-build-config', showBuildLogs: 'true')
          }
          stage('deploy') {
            openshiftDeploy(deploymentConfig: 'slawekdeploj')
          }
        }
   }
} catch (err) {
   echo "in catch block"
   echo "Caught: ${err}"
   currentBuild.result = 'FAILURE'
   throw err
}          
