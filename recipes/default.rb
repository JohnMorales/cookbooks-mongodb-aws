template "/etc/yum.repos.d/mongodb-32.repo" do
  source "mongodb.repo"
  action :create
end

package "mongodb-org" do
  action :install
end

service "mongod" do
  action :start
end
