data "template_file" "get_px" {
   template = "${file("${path.module}/templates/getpx.sh.tpl")}"
   
   vars {
       clusterID = "${var.clusterID}"
       kvdb      = "${var.kvdb}"
       device_args = "${var.device_args}"
       data_if     = "${var.data_if}"
       mgmt_if     = "${var.mgmt_if}"
       journal_dev = "${var.journal_dev}"
       scheduler =   "${var.scheduler}"
       token     =   "${var.token}"
       force_use =   "${var.force_use}"
       zero_storage = "${var.zero_storage}"
       env_list    =  "${var.env_list}"
       secret_type =  "${var.secret_type}"
       cluster_secret_key = "${var.cluster_secret_key}"
    }
}

