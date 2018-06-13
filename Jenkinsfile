pipeline {
  agent any
  stages {
    stage('Ensure Files Exist') {
      steps {
        fileExists 'Program.cs'
        fileExists 'helloworld.csproj'
        fileExists 'build.ps1'
      }
    }
    stage('Build Project') {
      steps {
        powershell(script: '.\\build.ps1', returnStdout: true)
      }
    }
    stage('Verify Build Success') {
      steps {
        fileExists 'helloworld.dll'
      }
    }
    stage('Run Build') {
      steps {
        powershell(script: 'scripts/run.ps1', returnStatus: true, returnStdout: true)
      }
    }
  }
}