try {
   timeout(time: 20, unit: 'MINUTES') {
      node() {
          stage('build') {
            openshiftBuild(buildConfig: 'slawek-bc-simple', showBuildLogs: 'true')
          }
          stage('deploy') {
            openshiftDeploy(deploymentConfig: 'slawekdeploj')
            openshiftScale(deploymentConfig: 'slawekdeploj',replicaCount: '1')
             
          }
        }
   }
} catch (err) {
   echo "in catch block"
   echo "Caught: ${err}"
   currentBuild.result = 'FAILURE'
   throw err
}          
