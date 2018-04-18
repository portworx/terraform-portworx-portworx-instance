# Portworx Module

Module to simply/easily deploy Portworx through Terraform

Assign appropriate command-line variables as per the docs:

```
variable "clusterID" { default = "" }
variable "kvdb" { default = "" }
variable "device_args" { default = "" }
variable "data_if" { default = "" }
variable "mgmt_if" { default = "" }
variable "journal_dev" { default = "" }
variable "scheduler" { default = ""}
variable "token" { default = "" }
variable "force_use" { default = "" }
variable "zero_storage" { default = "" }
variable "env_list" { default = "" }
variable "secret_type" { default = "" }
variable "cluster_secret_key" { default = "" }
```

For detailed description, please see the [Portworx Docs for CLI variables](https://docs.portworx.com/runc/options.html)

Be sure to specify the same clusterID for all nodes in the cluster.
Example:
```
locals {
      clusterid = "${uuid()}"
}

module "portworx" {
   source = "../portworx"
   clusterID = "${local.clusterid}"
   data_if = "${var.d_eth_if}"
   mgmt_if = "${var.m_eth_if}"
   device_args = "-s /dev/sda"
   # force_use = "true"
   # zero_storage = "true"
   # kvdb   { default = "" }
   # journal_dev { default = "" }
   # scheduler { default = ""}
   # token { default = "" }
   # zero_storage { default = "" }
   # env_list { default = "" }
   # secret_type { default = "" }
   # cluster_secret_key" { default = "" }
}
```

To use for installing Portworx, use the output ```get_px_cmd``` attribute as part
of a ```remote-exec``` inline command.  Ex:
```
 provisioner "remote-exec" {
       inline = [
         "curl -fsSL https://get.docker.com | sh",
         "systemctl enable docker",
         "systemctl start docker",
         "${module.portworx.get_px_cmd}"
       ]
```

For a reference example, please see [https://github.com/portworx/terraporx/tree/master/digital_ocean/centos](https://github.com/portworx/terraporx/tree/master/digital_ocean/centos)
