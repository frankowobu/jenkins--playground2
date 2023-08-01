def buildApp(){
  echo "Building the application for version ${params.VERSION}..."
}
def testApp(){
  when{
    expression{
      params.executeTests
    }
  }
   echo "Testing the application..."
}
def deployApp(){
  echo "Deploying the application..."
}
