resource "azuredevops_project" "project" {
  name               = var.project_name
  description        = var.project_description
  visibility         = var.visibility
  version_control    = "Git"
  work_item_template = "Agile"

  features = {
    "testplans"    = "enabled"
    "artifacts"    = "enabled"
    "boards"       = "enabled"
    "repositories" = "enabled"
    "pipelines"    = "enabled"
  }
}
