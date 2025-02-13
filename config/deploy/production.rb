# config/deploy/production.rb
# server-based syntax
# ======================
server '10.5.121.190', user: 'ers', roles: %w{app db web}
set :repo_path, '/home/ers/repo'

# Specifies which branch should be the one pushed.
set :branch, 'deploy'
# set :ssh_options, { :verbose => :debug }