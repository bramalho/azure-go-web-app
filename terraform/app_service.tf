resource "azurerm_app_service_plan" "service_plan" {
    name                = "${var.prefix}-servie-plan"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name

    kind     = "Linux"
    reserved = true

    sku {
        tier = "Basic"
        size = "B1"
    }
}

resource "azurerm_app_service" "app_service" {
    name                = "${var.prefix}-app"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    app_service_plan_id = azurerm_app_service_plan.service_plan.id

    site_config {
        always_on        = true
        linux_fx_version = "DOCKER|${var.docker_image}:${var.docker_image_version}"
    }

    app_settings = {
        WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"

        # DOCKER_REGISTRY_SERVER_URL      = ""
        # DOCKER_REGISTRY_SERVER_USERNAME = ""
        # DOCKER_REGISTRY_SERVER_PASSWORD = ""

        PORT = "80"
    }
}
