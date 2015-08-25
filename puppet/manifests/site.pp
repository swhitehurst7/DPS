node 'Master.netbuilder.private'{
    include java
	include mvn
	include jenkins
	include git
	include mcollective
}
node 'Agent.netbuilder.private'{
	
}