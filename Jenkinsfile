#!/usr/bin/env groovy
def gv
pipeline {
    agent any

    parameters {
    choice(name: 'VERSION', choices: ['1.1', '1.2', '1.3', '2.0', '2.1', '2.2'], description: 'Select the version to build and deploy.')
    booleanParam(name: 'executeTests', defaultValue: true, description: 'Run tests during the build.')
    booleanParam2(name: 'executeTests', defaultValue: false, description: 'build test without the build.')
}

    stages {
        stage('init') {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage('build') {
            steps {
                script {
                    gv.buildApp()
                }
            }
        }
        stage('test') {
            when{
                expression{
                    params.executeTests
                }
            }
             input{
                message "select condition for test"
                ok "done"
                parameters{
                     choice(name: 'COND', choices: ['${param.executeTests}', '${param.executeTests}'], description: '')
                }
            steps {
                script {
                    gv.testApp()
                    echo "${COND} selected"
                }
            }
        }
        stage('deploy') {
            input{
                message "select where you would like to deploy"
                ok "done"
                parameters{
                     choice(name: 'ENV1', choices: ['prdo', 'stage', 'uat'], description: '')
                     choice(name: 'ENV2', choices: ['prdo', 'stage', 'uat'], description: '')
                }
            }
            steps {
                script {
                    gv.deployApp()
                    
                }
            }
        }
    }
}
}
