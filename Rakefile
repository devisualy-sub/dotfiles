
desc 'setup'
task :setup => [:create_directories_on_home, :create_symlinks_on_home, :create_symlinks_on_subl, :vimperator]

CURRENT_DIRECTORY = Dir.getwd

desc 'create directories on home'
task :create_directories_on_home do
  directories = ['bin']
  directories.each do |directory|
    sh "/bin/mkdir -p $HOME/#{directory}"
  end
end

desc 'create symlinks on home'
task :create_symlinks_on_home do
  dotfiles = ['.bashrc', '.gitrc', '.vimperatorrc', '.vimrc']
  dotfiles.each do |dotfile|
    path = File.join(CURRENT_DIRECTORY, dotfile)
    sh "/bin/ln -sf #{path} $HOME/"
  end
end

desc 'create symlinks on subl'
task :create_symlinks_on_subl do
    sh "/bin/ln -sf #{CURRENT_DIRECTORY}/.subl/User/ $HOME/Library/Application\\ Support/Sublime\\ Text\\ 2/Packages/User"
    sh "ln -sf \"/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl\" ~/bin/subl"
end

desc 'vimperator'
task :vimperator do
  sh "/bin/ln -sf #{CURRENT_DIRECTORY}/.vimperator/colors/ $HOME/.vimperator/colors"
end
