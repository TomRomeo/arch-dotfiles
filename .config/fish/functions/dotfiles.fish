# Defined in - @ line 1
function dotfiles --wraps='/usr/bin/git --git-dir=/home/osaka/.dotfiles.git/ --work-tree=/home/osaka' --description 'alias dotfiles=/usr/bin/git --git-dir=/home/osaka/.dotfiles.git/ --work-tree=/home/osaka'
  /usr/bin/git --git-dir=/home/osaka/.dotfiles.git/ --work-tree=/home/osaka $argv;
end
