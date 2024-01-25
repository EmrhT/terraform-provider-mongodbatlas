resource "mongodbatlas_project_ip_access_list" "ip" {
  project_id = mongodbatlas_project.project.id
  cidr_block = var.cidr_block
  comment    = "cidr_block for accessing the cluster"
}
output "ipaccesslist" {
  value = mongodbatlas_project_ip_access_list.ip.cidr_block
}
