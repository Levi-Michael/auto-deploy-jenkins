
TOPIC

    Auto deploy jenkins with docker and docker compose.

SHORT DESCRIPTION

    The docker compose build a Jenkins image
    from the docker file with plugins for security and  management
    as a Jenkins CASC and run the image,
    You will receive container with Jenkins install with pre configuration
    of securityRealm, authorizationStrategy, remotingSecurity etc.,
    One SCM job will be already exist that will trigger when this Git repository gets Pull request,
    and will run a python script that print "Devops is great". 
    
    The default username and password will be: 
    Username: admin
    Password: password
    
    You can change them at casc.yaml
    at line 5-7
      users:
       - id: ${JENKINS_ADMIN_ID:-admin}
         password: ${JENKINS_ADMIN_PASSWORD:-password}

	
HOW TO RUN
	
    Clone this Git and run docker-compose up
