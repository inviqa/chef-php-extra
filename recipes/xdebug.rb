#
# Cookbook Name:: chef-php-extra
# Recipe:: xdebug
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

use_pear = false

case node['php']['ius']
  when '5.5' then package 'php55u-xdebug'
  when '5.4' then use_pear = true
  when '5.3' then use_pear = true
  else
    use_pear = true
end

if use_pear
  # Needed for phpize, which pecl needs
  include_recipe "chef-php-extra::module_dev"

  # php_pear "xdebug" do
  #   action :install
  # end

  if platform?(%w{debian ubuntu})
    package "php5-xdebug"
  elsif platform?(%w{centos redhat fedora amazon scientific})
    php_pear "xdebug" do
      action :install
    end
  end

  template "#{node['php']['ext_conf_dir']}/xdebug.ini" do
    mode "0644"
    variables(
      :params => node['xdebug']
    )
  end
end
