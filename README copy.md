# Tool-Automtion

    $ sudo yum install -y yum-utils
    $ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
    $ sudo yum -y install vault
    $ vault version  ( check the verison and to validate the installation of valut )
    $ vault server -help
    $ vault server -config=/opt/vault.hcl                    # Start a server with a configuration file

$sudo vim/opt/vault.hcl
ui = true
storage "file" {
  path = "/vault-data"
}
listener "tcp" {
 address     = "0.0.0.0:8200"
 tls_disable = 1
}
 systemctl start vault
