

resource "azuredevops_git_repository" "frontend_angular" {
  depends_on = [
    azuredevops_project.project
  ]

  project_id     = azuredevops_project.project.id
  name           = "angular-frontend-app"
  default_branch = "refs/heads/main"

  initialization {
    init_type = "Clean"
    # git {
    #   source_url = "https://github.com/youruser/yourrepo.git"
    # }
  }
}

resource "azuredevops_git_repository" "backend_api" {
  depends_on = [
    azuredevops_project.project
  ]

  project_id     = azuredevops_project.project.id
  name           = "BackendAPI"
  default_branch = "refs/heads/main"

  initialization {
    init_type = "Clean"
    # git {
    #   source_url = "https://github.com/youruser/yourrepo.git"
    # }
  }
}

resource "azuredevops_git_repository" "sql_server" {
  depends_on = [
    azuredevops_project.project
  ]
  
  project_id     = azuredevops_project.project.id
  name           = "sql_server"
  default_branch = "refs/heads/main"

  initialization {
    init_type = "Clean"
    # git {
    #   source_url = "https://github.com/youruser/yourrepo.git"
    # }
  }
}

# resource "azuredevops_git_repository_file" "example" {
#   repository_id       = azuredevops_git_repository.frontend_angular.id
#   file                = ".gitignore"
#   content             = "**/*.tfstate"
#   branch              = "refs/heads/master"
#   commit_message      = "First commit"
#   overwrite_on_create = false
# }
