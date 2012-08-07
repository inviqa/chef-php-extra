# Cookbook Name:: chef-php-extra
# Provider:: composer
#
# Copyright 2012, Marcello Duarte
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

action :install_composer do
  if !::File.directory?(new_resource.project_path)
    raise "#{new_resource.project_path} is not a directory"
  end

  if !::File.exists?("#{new_resource.project_path}/composer.phar")
    remote_file "#{new_resource.project_path}/composer.phar" do
      source "http://getcomposer.org/composer.phar"
      mode "0774"
    end
  end
end

action :install_packages do
  if ::File.exists?("#{new_resource.project_path}/composer.json")
    execute "install dependencies with composer" do
      cwd new_resource.project_path
      user "root"
      command "php composer.phar install"
    end
  end
end
