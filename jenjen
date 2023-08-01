#!/usr/bin/env groovy

pipeline {
    agent any
    envitonment{
        NEW_VERSION = "1.2"
    }
    stages {
        stage('build') {
            steps {
                    echo "Building the application with version ${NEW_VERSION}....."
            }
        }
        stage('test') {
            steps {
                script {
                    echo "Testing the application to be new....."  
                    }
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                    echo "Deploying the application....."
                }
            }
        }
    }
    
}
