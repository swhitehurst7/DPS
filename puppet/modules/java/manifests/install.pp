class java::install{

    Exec{
        path => ["/usr/bin", "bin", "/usr/sbin"], provider => 'shell'
    }

	exec{'Download tar':
        command => "sudo apt-get install -y tar"
    }
	
	#exec{'install libxml':
	    #require => Exec['Download tar'],
	    #command => "sudo apt-get install libxml2-dev"
	#}
	
	#exec{'install libxslt1
	    #require => Exec['Download tar'],
	    #command => "sudo apt-get install libxslt1-dev"
	#}
	
    exec{'Download Java':
        cwd => '/opt',
		require => Exec['Download tar'],
        command => "wget --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz"
    }
	
	exec{'Java Extract':
        cwd => '/opt',
        require => Exec['Download Java'],
        command => "tar xvf jdk-8u51-linux-x64.tar"
    }

    exec{'Install Java':
        cwd => '/opt',
        require => Exec['Java Extract'],
        command => "update-alternatives --install /usr/bin/java java /usr/local/java/jdk1.8.0_45/bin/java 1"
    }

    exec{'Set Java':
        cwd => '/opt',
        require => Exec['Install Java'],
        command => "update-alternatives --set java /usr/local/java/jdk1.8.0_45/bin/java"
    }

    exec{'Install JavaC':
        cwd => '/opt',
        require => Exec['Java Extract'],
        command => "update-alternatives --install usr/bin/javac javac usr/local/java/jdk1.8.0_45/bin/javac"
    }

    exec{'Set JavaC':
        cwd => '/opt',
        require => Exec['Install JavaC'],
        command => "update-alternatives --set usr/local/java/jdk1.8.0_45/bin/javac"
    }
}