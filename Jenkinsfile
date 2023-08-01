def gv

pipeline {
    agent any

    parameters {
        choice(name: 'VERSION', choices: ['1.1', '1.2', '1.3', '2.0', '2.1', '2.2'], description: 'Select the version to build and deploy.')
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
                    // Prompt the user for the COND parameter using the input step
                    def userInput = input message: 'Select a condition for test', parameters: [choice(name: 'COND', choices: ['option1', 'option2'], description: 'Select a condition for test.')]
                    echo "Running test with ${userInput.COND}..."
                    if (userInput.COND == 'option1') {
                        env.executeTests = 'false'
                    }
                    gv.testApp()
                }
            }
        }
        stage('deploy') {
            input {
                message "Select where you would like to deploy"
                ok "Done"
                parameters {
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
