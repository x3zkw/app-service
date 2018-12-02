node {
    checkout scm

    stage 'Run Test' {
      dir("src") {
         sh (". .env/bin/activate")
         sh ("pip install -r requirements.txt")
         sh ("python -m pytest tests/test_app.py")
      }
    }

    stage 'Build Image' {
      sh("make image")
    }

    stage('Publish Image'){
      sh ("make publish")
    }
}
