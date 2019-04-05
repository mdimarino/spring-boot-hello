node {

   stage('Build') {
    sh "mvn clean package dockerfile:build"
   }

   stage('Results') {
    archive 'target/*.jar'
   }
   
}
