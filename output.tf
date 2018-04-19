
output "get_px_cmd" { 
    value = "${data.template_file.get_px.rendered}"
    description = "Generated command to install Portworx"
}

output "clusterID" {
    value =  "${var.clusterID}"
    description = "Portworx ClusterID to be used as input variable for subsequent scaling up"
}
