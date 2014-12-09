#
# Cookbook Name:: gitweb
# Recipe:: default
#
# Copyright (C) 2014 ShowMobile, LLC
#
# All rights reserved - Do Not Redistribute
#

node[:gitweb][:cookbooks].each { |cb| include_recipe cb }
node[:gitweb][:packages].each { |pkg| package pkg }

directory node[:gitweb][:repo_path] do
  owner node[:gitweb][:user][:name]
  group node[:gitweb][:user][:group]
  recursive true
end

template '/etc/gitweb.conf' do
  variables(
    settings: node[:gitweb][:config][:settings],
    features: node[:gitweb][:config][:features]
  )
end

web_app node[:gitweb][:server][:name] do
  template 'gitweb.apache.conf.erb'
  server_name node[:gitweb][:server][:name]
  server_aliases node[:gitweb][:server][:aliases]
  docroot node[:gitweb][:repo_path]
end
