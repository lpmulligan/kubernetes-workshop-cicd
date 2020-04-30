node {
    stage('clone') {
        git 'https://github.com/lpmulligan/kubernetes-workshop-cicd'
        gitBranch = sh(returnStdout: true, script: "git rev-parse --abbrev-ref HEAD").trim()
        gitShortCommit = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()
        echo 'Pulling... ' + gitBranch
        echo 'Commit..' + gitShortCommit   
  }
   stage('build') {
    acrQuickTask azureCredentialsId: 'lpm10m-jenkins-sp',
                  sourceType: 'git',
                  gitRepo: 'https://github.com/lpmulligan/kubernetes-workshop-cicd',
                  gitPath: 'app/sample-go/',
                  dockerfile: 'app/sample-go/Dockerfile',
                  registryName: 'lpm10meus2acr', 
                  resourceGroupName: 'lpm10m-eus2-shared-services-rg',
                  imageNames: [[image: "sample-go-demo:$gitBranch-$gitShortCommit"]]

  }
}  
