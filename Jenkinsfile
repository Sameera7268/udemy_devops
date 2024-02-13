pipeline {
    agent {
        node {
            label 'maven'
        }
    }
environment {
    PATH = "/opt/apache-maven-3.9.6/bin:$PATH"
}
    stages {
        stage("build"){
            steps {
                 echo "----------build started------"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
                 echo "----------build completed------"
                 
            }
        }
        stage("test"){
            steps{
                echo "----------test started------"
                 sh 'mvn surefire-report:report'
                 echo "----------test started------"
            }


        }


        stage('SonarQube analysis') {
        environment{
                scannerHome = tool 'sameera-sonar-scanner'
            }
            steps{    
            withSonarQubeEnv('sameera-sonarqube-server') { // If you have configured more than one global server connection, you can specify its name
            sh "${scannerHome}/bin/sonar-scanner"
            }
        }
  }
}    
}
:wq
[3~[3~[A[A[B[3~[3~[C[