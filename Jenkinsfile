node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop TODO'
            sh 'docker rm TODO'
            sh 'rm -rf getting-started' 
        }
    }
    stage('Build') {
        build 'BuildTodoApp'
    }
    // stage('Results') {
    //     build 'TestSampleApp'
    // }
}
