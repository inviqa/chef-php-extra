include_recipe "chef-php-extra::pear"

zf = php_pear_channel "pear.zfcampus.org" do
  action :discover
end

php_pear "zf" do
  preferred_state "stable"
  channel zf.channel_name
  action :install
end