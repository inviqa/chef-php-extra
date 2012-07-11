# 
if File.exists?("/etc/yum.repos.d/ius.repo")
    packages = %w{ php53u-xml }
else
    packages = %w{ php53-xml }
end

pkgs = value_for_platform(
  [ "centos", "redhat", "fedora" ] => {
    "default" => packages
  },
  [ "debian", "ubuntu" ] => {
    "default" => %w{ }
  }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
