node 'Master.netbuilder.private'{
    include java
<<<<<<< HEAD
#	include mvn
#	include jenkins
#	include git
    include nexus
#   include mcollective
=======
	include mvn
	include jenkins
	include git
	include jira
	#include mcollective
	
	#class {'::mcollective':
	    #middleware => true,
		#client => true,
		#middleware_hosts => ['Master.netbuilder.private']
	#}
>>>>>>> 60c757ccf2aedda34e7cda243639e9fc1ca0efd8
}
node 'Agent.netbuilder.private'{
    #include java
	#include mvn
	#include jenkins
	#include git
	#include jira
	#include mcollective
	
	#class {'::mcollective':
		#client => true,
		#middleware_hosts => ['Master.netbuilder.private']
	#}
}