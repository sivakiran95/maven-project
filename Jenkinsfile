peline {  
    agent any  
        stages {  
       	    stage("git_checkout") {  
           	    steps {  
           	            sh '''
           	          
              	    git clone https://github.com/sivakiran95/maven-project.git 
              	    echo "repo cloned successfully"
              	   
              	     '''
              	    }  
              	  
         	    } 
         	    
         	    stage('Build') {
                 steps {
                           sh '''
                            cd maven-project

                            mvn  install
                            '''
                        }
                      }
                      
                stage('Deployment') {
                      steps {
                            sh '''
                            cd /home/ubuntu/.jenkins/workspace/pipeline_job/maven-project/webapp
                            cp target/webapp.war /home/ubuntu/tomcat/apache-tomcat-8.5.90/webapps
                            '''                   
                            }
                 }      
        }
}
