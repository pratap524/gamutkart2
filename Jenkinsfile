pipeline {
	agent any
	stages {
		stage('clone the code'){
			steps {
		sh "https:/github.com/pratap524/gamutkart2" 
		}
		}

		stage(build) {
			steps {
		sh "mvn install"
	               }
	               }
		}
		}
