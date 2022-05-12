pipeline{
	agent any 
	tools
	{
		maven "Maven"
	}
	stages {
		stage ('checkout')
		{
			steps{
				git branch: 'main', url: https://github.com/Cloud-Devops-Automation/8AM-Maven-Project.git
			}
		}

		stage('Execute Maven'){
			steps {
				sh 'mvn package'
			}

		}
		stage('Build Docker Image'){
			sh 'docker build -t coloud-web-app:latest .'
			sh 'docker tag coloud-web-app thanish/coloud-web-app:latest'
		}

		stage('Pushing the image to Docker Hub'){
			steps{
				withDockerRegistry([credentialsId:"dockerHub",url: " "])
				{
					sh 'docker push thanish/coloud-web-app:latest'
				}
			}
		stage('create the Container'){
			steps{
				sh "docker run -itd -p 8005:8080 --name test-container thanish/coloud-web-app:latest /bin/bash "
			}
		}
		
		
	}
}
