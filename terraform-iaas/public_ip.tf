resource "azurerm_public_ip" "dataPublicIp" {
  allocation_method = "Static"
  location = var.location
  name = "dataPublicIp"
  resource_group_name = azurerm_resource_group.dataRg.name
  domain_name_label = "data-query"

  depends_on = [azurerm_resource_group.dataRg]
}