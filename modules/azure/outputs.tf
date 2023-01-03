
output "azure_public_ip" {
  value = azurerm_linux_virtual_machine.grafana_terraform_vm.public_ip_address
}
