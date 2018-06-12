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
  }
}