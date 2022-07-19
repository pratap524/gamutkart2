pipeline {
    agent any

//	tools {
//		maven 'maven3.6'
//	}
//	environment {
//		M2_INSTALL = "/usr/bin/mvn"
//	}

    stages {
        stage('Clone-Repo') {
	    steps {
	        checkout scm
	    }
        }

        stage('Build') {
            steps {
                sh 'mvn install -Dmaven.test.skip=true'
            }
        }
		
        stage('Unit Tests') {
            steps {
                sh 'mvn compiler:testCompile'
                sh 'mvn surefire:test'
                junit 'target/**/*.xml'
            }
        }

        stage('Deployment') {
            steps {
               sshagent(['deploy-user']) {
        sh "cp /var/lib/jenkins/workspace/gamut/target/gamutgurus.war /home/ubuntu/pratap/apache-tomcat-10.0.22/webapps"  
	}
	}
	}
	stage('Startup') {
	 steps {
	  sh "cd /home/ubuntu/pratap/apache-tomcat-10.0.22/bin"
	 
	}
        }
	
 	stage('Tomcat starting') {
         steps {
          sh "startup.sh"

        }
        }

	}
       }
  
