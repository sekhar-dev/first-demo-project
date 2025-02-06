pipeline {
    agent any

    tools {
        // Ensure Maven is available as configured in Jenkins' Global Tool Configuration
        maven 'Maven 3.x' // Name of the Maven installation from Step 3
    }

    environment {
        // Optional: If you have any environment variables you need
        // Example: MAVEN_HOME = '/opt/apache-maven-3.9.9'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from Git
                git 'https://github.com/sekhar-dev/first-demo-project.git' branch: 'master'
            }
        }

        stage('Build') {
            steps {
                // Run Maven build command (you can change this if you have specific goals)
                sh 'mvn clean install'
            }
        }

        stage('Deploy') {
            steps {
                // Optional: Deploy the built artifacts to a repository (e.g., Nexus or Artifactory)
                sh 'mvn deploy'
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed. Check the logs for details.'
        }
    }
}
