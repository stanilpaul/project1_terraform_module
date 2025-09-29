output "random_details" {
  value = random_string.random.result
}
output "resource_group" {
  value = module.resource-group
}
output "network" {
  value = module.network
}
