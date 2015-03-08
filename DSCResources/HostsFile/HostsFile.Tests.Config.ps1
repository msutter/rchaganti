Configuration TestConfig {

    Import-DscResource -Name HostsFile -ModuleName rchaganti

    Node "test" {

        HostsFile HostsFileDemo {
            hostName = "testhost100"
            ipAddress = "10.10.10.100"
            Ensure = "Present"
        }

    }
}