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
        sh "scp -o StrictHostKeyChecking=no webapp/target/gamutgurus.war ec2-user@13.233.123.220:8090:/home/ubuntu/pratap/apache-tomcat-10.0.22/webapps"
	}
        }
    }
    }
