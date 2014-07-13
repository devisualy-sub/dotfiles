
desc 'setup'
task :setup => [:create_symlinks]

CURRENT_DIRECTORY = Dir.getwd


DOTFILES = ['.bashrc', '.gitrc', '.vimperatorrc', '.vimrc']
desc 'create symlinks'
task :create_symlinks do
  DOTFILES.each do |dotfile|
    path = File.join(CURRENT_DIRECTORY, dotfile)
    sh "/bin/ln -sf #{path} $HOME/"
  end
end
