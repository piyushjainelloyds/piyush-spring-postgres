pipeline {
  agent any
  stages {
    stage("verify tooling") {
      steps {
        sh '''
          docker-compose version
          curl --version
        '''
      }
    }
    stage('Prune Docker data') {
      steps {
        sh 'docker system prune -a --volumes -f'
      }
    }
    stage('Start container') {
      steps {
        sh 'docker-compose up -d --no-color --wait'
        sh 'docker-compose ps'
      }
    }
    stage('Run tests against the container') {
      steps {
        sh 'docker-compose ps'
      }
    }
  }
  post {
    always {
      sh 'docker-compose ps'
    }
  }
}