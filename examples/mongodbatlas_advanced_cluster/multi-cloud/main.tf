provider "mongodbatlas" {
  public_key  = var.public_key
  private_key = var.private_key
}

resource "mongodbatlas_advanced_cluster" "test" {
  project_id   = mongodbatlas_project.project.id
  name         = "Cluster-2"
  cluster_type = "REPLICASET"

  replication_specs {
    region_configs {
      electable_specs {
        instance_size = "M0"
        node_count = var.node_count
      }
      provider_name         = var.provider_name
      backing_provider_name = var.backing_provider_name
      region_name           = var.region_name
      priority              = 7
    }
  }

  labels {
    key   = "env"
    value = "dev"
  }

}


output "connection_strings" {
  value = mongodbatlas_advanced_cluster.test.connection_strings[0].standard_srv
}

output "mongo_db_version" {
  value = mongodbatlas_advanced_cluster.test.mongo_db_version
}