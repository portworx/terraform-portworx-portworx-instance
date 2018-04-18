
output "get_px_cmd" { 
    value = "${data.template_file.get_px.rendered}"
}
