pipeline {
	agent any
	stages {
		stage('clone the code'){
			steps {
		sh "checkout scm"	
		:wq}
		}

		stage(build) {
			steps {
		sh "mvn install"
	               }
	               }
		}
		}
