template "/etc/yum.repos.d/mongodb-32.repo" do
  mode 0600
  source "mongodb.repo"
  action :create
end

template "/etc/mongod.conf" do
  mode 0600
  source "mongodb.conf.erb"
  action :create
end

package "mongodb-org" do
  action :install
end

service "mongod" do
  action :start
end
