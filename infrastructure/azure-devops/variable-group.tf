resource "azuredevops_variable_group" "variablegroup" {
  project_id   = azuredevops_project.project.id
  name         = local.project
  description  = "Variables for ${local.project} packer pipelines"
  allow_access = false

  variable {
    name  = "AZURE_RESOURCE_GROUP"
    value = "rg-${local.project}"
  }

  variable {
    name  = "AZURE_STORAGE_ACCOUNT"
    value = "saterraformpackerpackerd"
  }

  variable {
    name  = "AZURE_LOCATION"
    value = "centralus"
  }

  # variable {
  #   name         = "Account Password"
  #   secret_value = "p@ssword123"
  #   is_secret    = true
  # }
}