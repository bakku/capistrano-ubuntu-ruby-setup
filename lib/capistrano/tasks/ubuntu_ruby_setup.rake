namespace :ubuntu do
  desc 'Run apt-get update'
  task :apt_get_update do
    on roles fetch(:rbenv_roles) do
      next if test "[ -d #{fetch(:rbenv_path)} ]"
      execute! :sudo, "apt-get update > /dev/null"
    end
  end

  desc 'Install everything needed for Ruby'
  task :install_ruby_prerequisites do
    on roles fetch(:rbenv_roles) do
      next if test "[ -d #{fetch(:rbenv_path)} ]"
      execute! :sudo, "apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev > /dev/null"
    end
  end

  desc 'Prepare Ubuntu system to install ruby'
  task :prepare_ubuntu do
    invoke 'ubuntu:apt_get_update'
    invoke 'ubuntu:install_ruby_prerequisites'
  end

  before 'rbenv:install', 'ubuntu:prepare_ubuntu'
end
