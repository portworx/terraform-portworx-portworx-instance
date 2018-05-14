# Portworx Module

[ ***experimental***] Module to simply/easily deploy Portworx through Terraform

## Usage

Be sure to specify the same `kvdb` and `clusterID` for all nodes in the same cluster.
```hcl

module "portworx" {
   source = "github.com/portworx/terraform-portworx-portworx-instance"
   clusterID = ""
   data_if = ""
   mgmt_if = ""
   device_args = ""
   force_use = ""
   zero_storage = ""
   kvdb = ""
   journal_dev = "" 
   scheduler = ""
   token = "" 
   zero_storage = "" 
   env_list = "" 
   secret_type = "" 
   cluster_secret_key" = "" 
}
```

For detailed description, please see the [Portworx Docs for CLI variables](https://docs.portworx.com/runc/options.html)

To use for installing Portworx, use the output ```get_px_cmd``` attribute as part
of a ```remote-exec``` inline command.  Ex:
```hcl
 provisioner "remote-exec" {
       inline = [
         "curl -fsSL https://get.docker.com | sh",
         "systemctl enable docker",
         "systemctl start docker",
         "${module.portworx.get_px_cmd}"
       ]
 }
```

## Resources created

- `get_px_cmd`: Command that installs an instance of Portworx
- `clusterID` : Name of Portworx ClusterID

For a reference example, please see [https://github.com/portworx/terraporx/tree/master/digital_ocean/centos](https://github.com/portworx/terraporx/tree/master/digital_ocean/centos)
