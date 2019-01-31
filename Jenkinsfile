node {

   stage('Build') {
    sh "mvn clean package"
   }

   stage('Results') {
    archive 'target/*.jar'
   }
   
}
