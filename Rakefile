
desc 'default'
task :default => [:create_directories_on_home, :create_symlinks_on_home,
  :create_symlinks_on_subl, :karabiner, :bash]

CURRENT_DIRECTORY = Dir.getwd

desc 'create directories on home'
task :create_directories_on_home do
  directories = ['bin', '.golang']
  directories.each do |directory|
    sh "/bin/mkdir -p $HOME/#{directory}"
  end
end

desc 'create symlinks on home'
task :create_symlinks_on_home do
  dotfiles = ['.gitconfig', '.vimrc']
  dotfiles.each do |dotfile|
    path = File.join(CURRENT_DIRECTORY, dotfile)
    sh "/bin/ln -sf #{path} $HOME/"
  end
end

desc 'create symlinks on subl'
task :create_symlinks_on_subl do
  sh "/bin/ln -sf #{CURRENT_DIRECTORY}/.sublimetext/Preferences.sublime-settings $HOME/Library/Application\\ Support/Sublime\\ Text\\ 3/Packages/User/Preferences.sublime-settings"
  sh "/bin/ln -sf #{CURRENT_DIRECTORY}/.sublimetext/Default\\ \\(OSX\\).sublime-keymap $HOME/Library/Application\\ Support/Sublime\\ Text\\ 3/Packages/User/Default\\ \\(OSX\\).sublime-keymap"
  sh "/bin/ln -sf \"/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl\" ~/bin/subl"
end

desc 'karabiner'
task :karabiner do
  sh "/bin/ln -sf #{CURRENT_DIRECTORY}/.karabiner/private.xml $HOME/Library/Application\\ Support/Karabiner/private.xml"
end

desc 'bash'
task :bash do
  sh "/bin/ln -sf #{CURRENT_DIRECTORY}/.bashrc $HOME/"
  sh "touch $HOME/.bash_galapagos"
end
