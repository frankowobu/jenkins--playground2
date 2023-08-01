#!/usr/bin/env groovy
def gv
pipeline {
    agent none

    parameters {
    choice(name: 'VERSION', choices: ['1.1', '1.2', '1.3', '2.0', '2.1', '2.2'], description: 'Select the version to build and deploy.')
    booleanParam(name: 'executeTests', defaultValue: true, description: 'Run tests during the build.')
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
            steps {
                script {
                    gv.testApp()
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }
}
