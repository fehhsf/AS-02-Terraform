resource "azurerm_linux_virtual_machine" "dataVmLinux" {
  name = "dataVmLinux"
  computer_name = "dataVm"
  admin_username = var.credentials.username
  admin_password = var.credentials.passwd
  disable_password_authentication = false
  location = var.location
  resource_group_name = azurerm_resource_group.dataRg.name
  size = "Standard_F2"
  network_interface_ids = [
    azurerm_network_interface.dataNic.id
  ]

  os_disk {
    name = "dataOSDisk"
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.dataStorage.primary_blob_endpoint
  }

  source_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    version = "latest"
  }

  depends_on = [azurerm_resource_group.dataRg, azurerm_network_interface.dataNic, azurerm_storage_account.dataStorage]
}


