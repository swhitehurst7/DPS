class java::config{

    Exec{
        path => ["/usr/bin", "bin", "/usr/sbin"]
    }

    file{'/home/vagrant/.bashrc':
        content => 'export JAVA_HOME=/usr/local/java/jdk1.8.0_45,
        JRE_HOME=/usr/local/java/jdk1.8.0_45/jre,PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH'
    }
}