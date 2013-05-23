template "/etc/monit/conf.d/mysql.conf" do
  source "monit_mysql.erb"
  group "root"
  owner "root"
  mode "0700"
end

execute "reload monit" do
  command "/usr/sbin/service monit reload"
  action :run
end
