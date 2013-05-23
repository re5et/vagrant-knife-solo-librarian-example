template "/etc/monit/conf.d/base.conf" do
  source "monit_base.erb"
  group "root"
  owner "root"
  mode "0700"
end

execute "reload monit" do
  command "/usr/sbin/service monit reload"
  action :run
end
