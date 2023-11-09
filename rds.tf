# ----------------------------------------------
# RDS Parameter group
# ----------------------------------------------
resource "aws_db_parameter_group" "mysql_standalone_parametergroup" {
  name   = "${var.project}-${var.environment}-mysql-standalone-parametergroup"
  family = "mysql8.0"

  parameter {
    name  = "character_set_database"
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }
}

resource "aws_db_option_group" "mysql_standalone_opotiongroup" {
  name                 = "${var.project}-${var.environment}-mysql-standalone-parametergroup"
  engine_name          = "mysql"
  major_engine_version = "8.0"
}