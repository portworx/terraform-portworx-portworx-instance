variable "clusterID" { 
    default = "" 
    description = "Portworx Unique Cluster ID (-c).  https://docs.portworx.com/runc/options.html"
}
variable "kvdb" { 
    default = "" 
    description = "Key-value data store :'etcd' or 'consul' (-k). https://docs.portworx.com/runc/options.html" 
}
variable "device_args" { 
    default = "" 
    description = "List of device arguments (-s -a -A).  https://docs.portworx.com/runc/options.html"
}
variable "data_if" { 
    default = "" 
    description = "Network interface for data traffic (-d).  https://docs.portworx.com/runc/options.html"
}
variable "mgmt_if" { 
    default = "" 
    description = "Network interface for management traffic (-m). https://docs.portworx.com/runc/options.html"
}
variable "journal_dev" { 
    default = "" 
    description = "Special device to use for I/O journal (-j). https://docs.portworx.com/runc/options.html"
}
variable "scheduler" { 
    default = ""
    description = "Scheduler (-x).  https://docs.portworx.com/runc/options.html"
}
variable "token" { 
    default = "" 
    description = "Token to use, if provisioned through Lighthouse (-t). https://docs.portworx.com/runc/options.html"
}
variable "force_use" { 
    default = "" 
    description = "Force use of block devices with existing FS data (-f). https://docs.portworx.com/runc/options.html"
}
variable "zero_storage" { 
    default = "" 
    description = "Allows node with no storage to run in 'zero-storage' mode (-z). https://docs.portworx.com/runc/options.html"
}
variable "env_list" { 
    default = "" 
    description = "Additional environment variables (-e). https://docs.portworx.com/runc/options.html"
}
variable "secret_type" { 
   default = "" 
   description = "Secret type for CloudSnap and Encryption: [aws|vault|kvdb] (-secret_type). https://docs.portworx.com/runc/options.html"
}
variable "cluster_secret_key" { 
   default = "" 
   description = "Cluster-wide secret key when using AWS KMS or Vault for volume encryption. https://docs.portworx.com/runc/options.html"
}

