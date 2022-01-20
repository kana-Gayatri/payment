module "cart" {
  source              ="git::https://github.com/kana-Gayatri/terraform-mutable.git//app-module"
  INSTANCE_TYPE       = var.INSTANCE_TYPE
  ENV                 = var.ENV
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT   = var.OD_INSTANCE_COUNT
  COMPONENT           = "payment"
  PORT                = 8080
  IS_PRIVATE_LB       = true
  LB_RULE_PRIORITY    = 103
}

output "INSTANCE_IDS" {
  value = module.cart.INSTANCE_IDS
}
