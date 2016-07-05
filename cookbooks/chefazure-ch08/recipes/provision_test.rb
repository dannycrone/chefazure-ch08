require 'chef/provisioning/azurerm'
with_driver 'AzureRM:c9967025-f0e7-4688-9bc4-c6c40650ef80'

azure_resource_group 'chefazure-ch08-test' do
  location 'West Europe'
end
