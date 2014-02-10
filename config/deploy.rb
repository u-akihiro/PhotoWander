# config valid only for Capistrano 3.1
lock '3.1.0'

# bundler setting
set :bundle_path, %w{.bundle}.join(' ')
set :bundle_without, %w{development}.join(' ')

set :application, 'PhotoWander'

# load capistrano-unicorn
# require 'capistrano/unicorn'

## set ENV
# require 'capistrano-env'

# load capistrano_colors
# require 'capistrano_colors'

set :repo_url, 'git@github.com:u-akihiro/PhotoWander.git'

# set shell
set :shell, '/bin/zsh -l'
set :default_shell, '/bin/zsh -l'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/www/PhotoWander'
set :rails_env, 'production'

# set(:rails_env) { fetch(:stage) }

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle .bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :default_env, { path: "/Users/pyar6329/.rbenv/shims/:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :mkdir, '-p', release_path.join('tmp')
      # execute :touch, release_path.join('tmp/restart.txt')
      # invoke 'unicorn:restart'
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  desc 'Upload database.yml'
  task :upload do
    on roles(:app) do |host|
      unless File.exist?("#{shared_path}/config") then
        execute "mkdir -p #{shared_path}/config"
      end
      if File.exist?("#{shared_path}/config/database.yml") then
        execute "rm #{shared_path}/config/database.yml"
      end
      execute "ln -s /var/www/database.yml #{shared_path}/config/database.yml"
      # puts ENV['PHOTOWANDER_DB_NAME']
      # execute "echo $SHELL $PATH $PHOTOWANDER_DB_HOST"
      # execute "source ~/.zprofile"
      # execute "echo $SHELL $PATH $PHOTOWANDER_DB_HOST"
      # upload!('config/database.yml', "#{shared_path}/config/database.yml")
    end
  end

  before :starting, 'deploy:upload'
  # after :finishing, 'deploy:cleanup'
end

after 'deploy:publishing', 'deploy:restart'
after 'deploy:finished', 'unicorn:restart'
