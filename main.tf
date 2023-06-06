resource "azurerm_mssql_database" "example" {
  name                = "my-sqldb"
  resource_group_name = azurerm_resource_group.example.name
  location            = "West US"
  server_name         = azurerm_mssql_server.example.name
  edition             = "Standard"
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb         = 5
  read_scale          = true
  create_mode         = "Default"
}
