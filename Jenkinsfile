pipeline {
	agent any
	stages {
		stage('clone the code'){
			steps {
		sh "checkout scm"	
		}
		}

		stage(build) {
			steps {
		sh "mvn install"
	               }
	               }
		}
		}
