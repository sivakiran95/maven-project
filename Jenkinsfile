pipeline {  
    agent any  
        stages {  
       	    stage("git_checkout") {  
           	    steps {  
    			sh '''
              	    echo "cloning repository" 
                    git clone https://github.com/sivakiran95/maven-project.git
              	    echo "repo cloned successfully"  
                     '''
              	    }  
         	    }

            stage('Build') {
                 steps {
                           sh '''
                         

                            mvn  install
                            '''
                        }
                      }
        }
}
