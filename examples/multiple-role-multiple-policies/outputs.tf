output "entire_output" { 
  description = "Outputs from the module."
  value = [for role in module.role_policy : role.module_output]
}