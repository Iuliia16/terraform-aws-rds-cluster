module "aws_rds_cluster" {
     source = "../"
region                  = var.region
cluster_identifier      = "cluster_identifier"
engine                  = "aurora-mysql"
engine_version          = "5.7.mysql_aurora.2.07.2"
availability_zones      = ["us-east-2a", "us-east-2b", "us-east-2c"]
database_name           = "db"
master_username         = "foo"
master_password         = "random_password.password.result"
backup_retention_period = 5
publicly_accessible     = true
preferred_backup_window = "07:00-09:00"
skip_final_snapshot     = true

subnet_ids = [
  "subnet-0e3bd7b9dd92a4898",
  "subnet-0fde922f006f0dc1e",
  "subnet-0ec106794858746b4"
]
allowed_hosts = [
  "50.194.68.230/32",
  "127.0.0.1/32"
]

# output "region" {
#   value = var.region
# }
# output "subnet_list" {
#   value = var.subnet_ids
# }
# output "allowed_hosts" {
#   value = var.allowed_hosts
# }
# output "DB_NAME" {
#   value = "aws_rds_cluster.default.cluster_identifier"
# }
}