#!groovy

pipeline {

    agent {
        label 'linux && !gui-test'
    }
    options {
        timestamps()
    }
    tools {
        jdk 'jdk-8u101'
    }
    parameters {
        booleanParam(defaultValue: false, description: 'Perform release', name: 'release')
    }

    stages {
        stage('Tests') {
            steps {
                sh "chmod +x gradlew"
                sh "./gradlew test"
            }
        }
        stage('Build - test') {
            when {
              expression {
                !params['release']
              }
            }
            steps {
                sh "./gradlew publish -x test"
            }
        }
        stage('Build + release - test') {
            when {
              expression {
                params['release']
              }
            }
            steps {
                sh "git checkout -B ${env.BRANCH_NAME}"
                // il faut un repo en ssh au plugin pour faire le tag
                sh "git remote rm origin"
                sh "git remote add origin 'git@i1frgit01.nantes.cabinet-besse.fr:alm/sfepi-services.git'"
                sh "chmod +x gradlew"
                sh "./gradlew clean release -x test"
            }
        }
    }
}