terraform {
  backend "http" {
      address          = "https://gitlab.com/api/v4/projects/<project_id>/terraform/state/<project_name>"
      lock_address     = "https://gitlab.com/api/v4/projects/<project_id>/terraform/state/<project_name>/lock"
      unlock_address   = "https://gitlab.com/api/v4/projects/<project_id>/terraform/state/<project_name>/lock"
      username         =  "tf" 
      lock_method      = "POST"
      unlock_method    = "DELETE"
      retry_wait_min   = 5
  }
}
