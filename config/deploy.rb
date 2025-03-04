#config/deploy.rb
# config valid for current version and patch releases of Capistrano

set :rbenv_type, :user # or :system, or :fullstaq (for Fullstaq Ruby), depends on your rbenv setup
set :rbenv_path, '/home/ers/.rbenv'

# in case you want to set ruby version from the file:
set :rbenv_ruby, File.read('.ruby-version').strip
# set :rbenv_ruby, '3.0.0'


set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} /usr/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

lock "~> 3.16.0"

set :application, "CRISPRCitrus"
set :repo_url, "git@github.com:rojoredapple/CRISPR_Citrus_v3.0.0.git"
set :tmp_dir, "/home/ers/tmp"
set :default_shell, "/bin/bash -l"

SSHKit.config.command_map[:env] = '/usr/bin/env'
#set :deploy_to, "/home/eastrock/#{fetch :application}"

append :linked_dirs, '.bundle'

namespace :deploy do
  desc "Run rake yarn install"
  task :yarn_install do
    on roles(:web) do
      within release_path do
        execute("cd #{release_path} && yarn install --silent --no-progress --no-audit --no-optional")
      end
    end
  end

  desc 'Ensure yarn is executable'
  task :chmod_yarn do
    on roles(:app) do
      execute "chmod +x #{release_path}/bin/yarn"
    end
  end

  desc 'Replace ruby.exe with ruby in bin/*'
  task :fix_rails_shebang do
    on roles(:app) do
      execute "sed -i '1s/ruby.exe/ruby/' #{release_path}/bin/*"
    end
  end

  desc 'Backup repo and clone a new one'
  task :clone_bare_repo do
    on roles(:app) do
      execute "rm -rf /home/ers/repo_backup/"
      execute "mv /home/ers/repo/ /home/ers/repo_backup"
      execute "git clone --bare git@github.com:G-Thomson/CRISPRCitrus_falcon-v2.8.0.git /home/ers/repo"
    end
  end
end

before 'git:clone', 'deploy:clone_bare_repo'
# Hook after the repo is updated to make sure yarn is executable
after 'git:create_release', 'deploy:chmod_yarn'
# Hook to ensure the shebang is fixed after repo is updated
after 'git:create_release', 'deploy:fix_rails_shebang'
before "deploy:assets:precompile", "deploy:yarn_install"