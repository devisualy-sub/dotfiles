
desc 'setup'
task :setup => [:create_symlinks_on_home, :create_symlinks_on_subl]

CURRENT_DIRECTORY = Dir.getwd

DOTFILES = ['.bashrc', '.gitrc', '.vimperatorrc', '.vimrc']
desc 'create symlinks_on_home'
task :create_symlinks_on_home do
  DOTFILES.each do |dotfile|
    path = File.join(CURRENT_DIRECTORY, dotfile)
    sh "/bin/ln -sf #{path} $HOME/"
  end
end

desc 'create symlinks on subl'
task :create_symlinks_on_subl do
    sh "echo $HOME"
    sh "/bin/ln -sf $HOME/Repositories/dotfiles/.subl/User $HOME/Library/Application\\ Support/Sublime\\ Text\\ 2/Packages/User"
end
