#Tool for all 

variable "tools" {
    default = {
        vault  ={
            name = "vault"
            instance_type = "t2.micro"
            port_no =8200
        }
        prometheus  ={
            name = "prometheus"
            instance_type = "t2.micro"
            port_no =9090 
        }
    }
  
}