template "/etc/yum.repos.d/mongodb-32.repo" do
  mode 0600
  source "mongodb.repo"
  action :create
end

package "mongodb-org" do
  action :install
end

template "/etc/mongod.conf" do
  mode 0644
  source "mongod.conf.erb"
  action :create
end

service "mongod" do
  action :start
end
