namespace :ubuntu do
  desc 'Run apt-get update'
  task :apt_get_update do
    on roles fetch(:rbenv_roles) do
      next if test "[ -d #{fetch(:rbenv_path)} ]"
      execute! :sudo, "apt-get update > /dev/null"
    end
  end

  before 'rbenv:install', 'ubuntu:apt_get_update'
end
