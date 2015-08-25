class mcollective::install{
    
	Exec{
        path => ['/usr/bin', 'bin', '/usr/sbin'], provider => 'shell'
    }

    exec{'Download MCollective':
        cwd => '/opt',
		command => "wget https://forgeapi.puppetlabs.com/v3/files/puppetlabs-mcollective-99.99.99.tar.gz",
		timeout => 0
    }
	
	exec{'Extract MCollective':
        cwd => '/opt',
        require => Exec['Download MCollective'],
        command => "sudo tar zxvf puppetlabs-mcollective-99.99.99.tar.gz"
    }
}