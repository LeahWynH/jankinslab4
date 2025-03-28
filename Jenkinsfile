pipeline{
    agent any

        stages{
            stage (“Prep”){
                    steps {
                        sh 'docker rm -vf $(docker ps -a -q) || true'
                        sh 'docker rmi -f $(docker images -a -q) || true'
                        sh 'docker builder prune --all --force'
                    }
                }
            
            stage (“Build”){
                    steps {
                        sh 'docker build -t jenkinslab4 .'
                    }
            }
            stage (“Run”){
                    steps {
                        sh 'docker run -d --name nodejs-project jenkinslab4'
                    }
            }
            stage (“Check”){
                steps{
                        sh 'docker ps -a'
                    }


        }
}
}
