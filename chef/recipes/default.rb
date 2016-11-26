# update linux
execute "update" do
    command "apt-get update"
end

# TODO setup app

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
#     command "ruby config"
#     stdout_logfile "/home/mark/songs-by-sinatra/.logs"
#     stdout_logfile_maxbytes "50MB"
#     redirect_stderr true
# end
