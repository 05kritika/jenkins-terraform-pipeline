pipeline {   
  agent {
    node {
      label 'master'
    }  
  }
  stages {
    stage('checkout') {
      steps {
        checkout scm
//        sh 'docker pull hashicorp/terraform:light'
      }
    }
    stage('init') {
      steps {
//        sh 'docker run hashicorp/terraform:light init'
          sh 'terraform init'
      }
    }
    stage('plan') {
      steps {
//        sh 'docker run hashicorp/terraform:light plan'
          sh 'terraform plan'
      }
    }
    stage('approval') {
      options {
        timeout(time: 1, unit: 'HOURS') 
      }
      steps {
        input 'approve the plan to proceed and apply'
      }
    }
    stage('apply') {
      steps {
  //      sh 'docker run hashicorp/terraform:light apply -auto-approve'
          sh 'terraform apply --auto-aproove'
        cleanWs()
      }
    }
  }
}
