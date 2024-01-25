variable "atlas_org_id" {
  description = "Atlas organization id"
  type        = string
  default = "658bbe6a7605526eb4153e43"
}
variable "public_key" {
  description = "Public API key to authenticate to Atlas"
  type        = string
}
variable "private_key" {
  description = "Private API key to authenticate to Atlas"
  type        = string
}
variable "cluster_name" {
  description = "Atlas cluster name"
  type        = string
  default     = "MultiCloudCluster"
}
variable "region_name" {
  type        = string
  description = "MongoDB Atlas Cluster Region, must be a region for the provider given"
  default = "EU_WEST_1"
}
variable "mongodbversion" {
  type        = string
  description = "The Major MongoDB Version"
  default = "4"
}
variable "dbuser" {
  type        = string
  description = "MongoDB Atlas Database User Name"
  default = "emrah"
}
variable "dbuser_password" {
  type        = string
  description = "MongoDB Atlas Database User Password"
  default = "not-a-secret-password"
}
variable "database_name" {
  type        = string
  description = "The database in the cluster to limit the database user to, the database does not have to exist yet"
  default = "testdb"
}
variable "cidr_block" {
  type        = string
  description = "The IP address that the cluster will be accessed from, can also be a CIDR range or AWS security group"
  default = "0.0.0.0/0"
}
variable "provider_name" {
  type        = string
  description = "provider name"
  default = "TENANT"
}
variable "backing_provider_name" {
  type        = string
  description = "Backing provider name"
  default = "AWS"
}
variable "node_count" {
  type        = number
  description = "node count"
  default = 1
}