module "s3_bucket" {
  source      = "git@github.com:brocolidata/managed_dataplatforms.git//src/modules/s3_data_lake"
  lakehouse_bucket_name = var.lakehouse_bucket_name
  landing_bucket_name = var.landing_bucket_name
  tags = var.tags
}
