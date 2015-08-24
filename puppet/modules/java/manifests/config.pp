class java::config{

    Exec { 
		path => ["/usr/bin", "bin", "/usr/sbin"], provider => 'shell'
	}
	
    file{'/etc/profile.d/java.sh':
		require => Exec['Java Extract'],
	    ensure => present,
        content => 'export JAVA_HOME=/opt/jdk1.8.0_45\n
		export JRE_HOME=/opt/jdk1.8.0_45/jre\n
		export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH',
		mode => 755
    }
		
	exec{'install java':
	    command => 'update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 1',
	    require => File['/etc/profile.d/java.sh']
	}
}