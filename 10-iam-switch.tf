# test
module "op_suppression_list_delete_2026_03_09" {
  count  = local.is-prod ? 1 : 0
  source = "./module/time_limited_privilege"
  suffix = "OP-SUPPRESSION-LIST-DELETE-2026_03_09"

  emails = toset(["test@example.com"])
  until  = "2026-03-11T00:00:01+09:00"
  requested_privileges = toset([
    "AdministratorAccess",
  ])
}
