set :stage, :production
set :rails_env, 'production'
set :migration_role, 'db'
# set :default_shell, 'bash -l'
# set :ssh_options, {
#   forward_agent: true,
#   port: 22
# }

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, %w{pyar6329@localhost}
role :web, %w{pyar6329@localhost}
role :db,  %w{pyar6329@localhost}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'localhost', user: 'pyar6329', roles: %w{app web db}, my_property: :my_value

set :ssh_options, {
  forward_agent: true,
  port: 60015
}

# set :user, 'pyar6329'
# set :port, 22
# set :default_shell, 'bash -l'
# default_run_options[:shell] = 'bash -l'

# set :deploy_to, '/var/www/PhotoWander'
# set :default_shell, '/bin/bash -l'
# set :repo_url, 'git@github.com:u-akihiro/PhotoWander.git'

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
# and/or per server
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options

# task :ruby_path do
#     set :default_shell, "bash -l"
#     execute "which ruby"
# end
