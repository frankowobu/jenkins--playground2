#!/usr/bin/env groovy

pipeline {
    agent none
    environment{
        NEW_VERSION = '3.2'
    }
    stages {
        stage('build') {
            steps {
                script {
                    echo "Building the application for version ${NEW_VERSION}..."
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
