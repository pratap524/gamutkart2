pipeline {
	agent any
	stages {
		stage('clone the code'){
			steps {
		sh "checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pratap524/gamutkart2']]])" 
		}
		}

		stage(build) {
			steps {
		sh "mvn install"
	               }
	               }
		}
		}
