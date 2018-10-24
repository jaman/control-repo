node 'node1' {
    include base
    class {'tomcat':
    
    }
    tomcat::deploy {"sysfoo":
        deploy_url      => 'https://30-151694782-gh.circle-artifacts.com/0/tmp/circleci-artifacts/sysfoo.war',
        checksum        => 'md5',
        checksum_value  => 'c093ed88b3365d65006a8c5c82e1b4fd',
    }
    
}


node 'node2' {
    class {'tomcat':
        xmx => '88m',
    }
    
    tomcat::deploy {"sysfoo":
        deploy_url => 'https://31-151694782-gh.circle-artifacts.com/0/tmp/circleci-artifacts/sysfoo.war',
    }

}


node 'default' {}