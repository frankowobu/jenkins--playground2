#!/usr/bin/env groovy

pipeline {
    agent none

    parameters {
    choice(name: 'VERSION', choices: ['1.1', '1.2', '1.3', '2.0', '2.1', '2.2'], description: 'Select the version to build and deploy.')
    booleanParam(name: 'executeTests', defaultValue: true, description: 'Run tests during the build.')
}

    stages {
        stage('build') {
            steps {
                script {
                    echo "Building the application for version ${params.VERSION}..."
                }
            }
        }
        stage('test') {
              when {
                        expression{
                            params.executeTests
                        }
                    }
            steps {
                script {
                    echo "Testing the application..."
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                    echo "Deploying the application..."
                }
            }
        }
    }
}
