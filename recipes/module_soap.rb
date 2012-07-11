# 
if File.exists?("/etc/yum.repos.d/ius.repo")
    packages = %w{ php53u-soap }
else
    packages = %w{ php53-soap }
end

pkgs = value_for_platform(
  [ "centos", "redhat", "fedora" ] => {
    "default" => packages
  },
  [ "debian", "ubuntu" ] => {
    "default" => %w{ php-soap }
  }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
