if node['php']['ius'] != false and platform?("redhat", "centos", "fedora", "amazon", "scientific")
  include_recipe "yum::ius"
end

if node['php']['ius'] == "5.4"
  centos_packages = %w{ php54 php54-devel php54-cli php54-pear }
elsif node['php']['ius'] == "5.3"
  centos_packages = %w{ php53u php53u-devel php53u-cli php53u-pear }
else
  centos_packages = %w{ php php-devel php-cli php-pear }
end

pkgs = value_for_platform(
  [ "centos", "redhat", "fedora" ] => {
    "default" => centos_packages
  },
  [ "debian", "ubuntu" ] => {
    "default" => %w{ php5-cgi php5 php5-dev php5-cli php-pear }
  },
  "default" => %w{ php5-cgi php5 php5-dev php5-cli php-pear }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

template "#{node['php']['conf_dir']}/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :params => node['php']
  )
end
