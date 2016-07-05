require 'chef/provisioning/azurerm'
with_driver 'AzureRM:c9967025-f0e7-4688-9bc4-c6c40650ef80'

azure_resource_group 'chefazure-ch08-ci' do
  location 'West Europe'
end

azure_resource_template 'jenkins-server' do
  resource_group 'chefazure-ch08-ci'
  template_source 'cookbooks/chefazure-ch08/files/shared/machine_deploy.json'
  parameters location: 'West Europe',
             vmSize: 'Standard_D1',
             newStorageAccountName: 'chazch8ci',
             adminUsername: 'azure',
             adminPassword: 'P2ssw0rd',
             dnsNameForPublicIP: 'chefazure-ch08-ci',
             imagePublisher: 'Canonical',
             imageOffer: 'UbuntuServer',
             imageSKU: '14.04.3-LTS',
             vmName: 'chazch08jenkins'
  chef_extension client_type: 'LinuxChefClient',
                 version: '1210.12',
                 runlist: 'role[jenkins]'
end
