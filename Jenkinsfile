#!/usr/bin/env groovy

pipeline {
    agent none

    parameters{
        choice(name:VERSION, choices: [1.1,1.2,1.3], descriptiom: "")
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
