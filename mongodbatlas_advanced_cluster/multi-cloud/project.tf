resource "mongodbatlas_project" "project" {
  name   = "Multi-Cloud Cluster"
  org_id = var.atlas_org_id

  is_collect_database_specifics_statistics_enabled = false
  is_data_explorer_enabled                         = false
  is_extended_storage_sizes_enabled                = false
  is_performance_advisor_enabled                   = false
  is_realtime_performance_panel_enabled            = false
  is_schema_advisor_enabled                        = false
}

output "project_name" {
  value = mongodbatlas_project.project.name
}
