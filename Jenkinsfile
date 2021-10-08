pipeline {
    agent { node { label 'maven' } } 

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/nzhu972/dmn-springboot-kieserver'
            }   
        }   
        stage('Compile') {
            steps {
                sh label: '', script: '''mvn clean install
                mvn install:install-file -Dfile=pam/target/traffic-violation-kjar-1.0.0-SNAPSHOT.jar -DgroupId=com.violation -DartifactId=traffic-violation-kjar -Dversion=1.0.0-SNAPSHOT -Dpackaging=jar -DlocalRepositoryPath=MAVEN
                ''' 
            }   
        }   
        stage('Build') {
            steps {
                /// This is where you do a docker build in your env.
                sh 'oc start-build dmn-springboot-kieserver --from-dir=. -w' 
            }   
        }   
    }   
}
