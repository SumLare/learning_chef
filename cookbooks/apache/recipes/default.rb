#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'apache2' do
  case node['platform']
  when 'centos' 
    package_name 'httpd'
  when 'ubuntu'
    package_name 'apache2'
  end
end

service 'apache2' do
  service_name 'httpd'
  action [:start, :enable]
end
