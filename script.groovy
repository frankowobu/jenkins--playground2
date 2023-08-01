def buildApp(){
  echo "Building the application for version ${params.VERSION}..."
}
def testApp(){
   echo "Testing the application..."
}
def deployApp(){
  echo "Deploying the application..."
  echo "deploying to ${ENV1} and ${ENV2}"
}
return this
