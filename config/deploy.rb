$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
require "bundler/capistrano"

set :rvm_ruby_string, 'ruby-1.9.2-p136'        # Or whatever env you want it to run in.

set :application, "cory.is"
set :repository,  "git@github.com:cmonty/Cory.is.git"

set :deploy_to, "/home/cory/public_html/cory.is"
set :user, "cory"
set :port, 30000
set :ssh_options, { :forward_agent => true }
set :deploy_via, :remote_cache
set :copy_strategy, :checkout
set :keep_releases, 3
set :use_sudo, false
set :copy_compression, :bz2
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server "cory.is", :app, :web, :db, :primary => true

after "deploy", "symlinks:db"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
     task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end

namspace :symlinks do
  task :db do
    run "ln -s #{deploy_to}/#{shared_dir}/config/database.yml #{current_release}/config/database.yml"
  end
end
