#
# Cookbook Name:: chefazure-ch08
# Recipe:: default
#
# Copyright (c) 2016 Danny Crone inc, All Rights Reserved.

include_recipe 'chefazure-ch08::provision_dev'
include_recipe 'chefazure-ch08::provision_test'
