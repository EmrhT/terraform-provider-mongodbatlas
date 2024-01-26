# Basic index waiting to be added. 
# Since no collection exists at the beginning, not possible to add initially.


# resource "mongodbatlas_search_index" "test-basic-search-index" {
#   name   = "test-basic-search-index"
#   project_id = mongodbatlas_project.project.id
#   cluster_name = var.cluster_name

#   analyzer = "lucene.standard"
#   collection_name = var.collection_name
#   database = var.database_name
#   mappings_dynamic = true

#   search_analyzer = "lucene.standard"
# }