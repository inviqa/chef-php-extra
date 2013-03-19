#
# Cookbook Name:: chef-php-extra
# Recipe:: twig-ext
#
# Copyright 2012, Alistair Stead
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# Created by liuggio aka Giulio De Donato
#

include_recipe "git"

directory "/tmp/twig" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end


git "/tmp/twig" do
  repository "git://github.com/fabpot/Twig.git"
  revision "master"
  action :sync
  not_if "php -m | grep twig"
end

bash "make & install twig" do
  cwd "/tmp/twig/ext/twig"
  code <<-EOF
  phpize
  ./configure
  make && make install
  EOF
  not_if "php -m | grep twig"
end

template "#{node['php']['ext_conf_dir']}/twig.ini" do
  source "extension.ini.erb"
  cookbook "chef-php-extra"
  owner "root"
  group "root"
  mode "0644"
  variables(:name => "twig", :directives => [])
  not_if "php -m | grep twig"
end


