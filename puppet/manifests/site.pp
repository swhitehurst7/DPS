node 'Master.netbuilder.private'{
    include java
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