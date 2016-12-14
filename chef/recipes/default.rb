# update linux
execute "update" do
    command "apt-get update"
end

# g++ required for certain ruby gems
apt_package "g++"
apt_package "ruby-dev"
apt_package "libsqlite3-dev"

# add bundler to machine
execute "update bundler" do
  command "gem install bundler"
end

# setup app
execute "bundle install" do
  command "bundle install"
  cwd "/home/mark/songs-by-sinatra"
end

# supervisor setup
include_recipe "supervisor"

cookbook_file "/etc/supervisord.conf" do
    source "supervisord.conf"
    mode 0644
end

# TODO start supervisor
# # Start supervisor to handle start and restarting API
# supervisor_service "songs-by-sinatra" do
#     action :enable
#     directory "/home/mark/songs-by-sinatra"
#     command "rackup"
#     stdout_logfile "/home/mark/songs-by-sinatra/.logs"
#     stdout_logfile_maxbytes "50MB"
#     redirect_stderr true
# end
