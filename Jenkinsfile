node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop getting-started'
            sh 'docker rm getting-started'
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
