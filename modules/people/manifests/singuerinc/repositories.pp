class people::singuerinc::repositories (
  $my_sourcedir = $people::singuerinc::params::my_sourcedir,
  $my_homedir   = $people::singuerinc::params::my_homedir,
  $my_username  = $people::singuerinc::params::my_username
) {

  notify { 'class people::singuerinc::repositories declared': }

  ###############################
  # Git config and repositories #
  ###############################

  git::config::global{ 'user.name':
    value => 'Nahuel Scotti'
  }

  git::config::global { 'alias.lg':
    value => "log --pretty=format:'%C(yellow)%h%C(reset) %s %C(cyan)%cr%C(reset) %C(blue)%an%C(reset) %C(green)%d%C(reset)' --graph --date-order"
  }

  git::config::global{ 'user.email':
    value => 'nahuel.scotti@gmail.com'
  }

  git::config::global{ 'color.ui':
    value => 'auto'
  }

  git::config::global { 'alias.ll':
    value => 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
  }

  git::config::global { 'alias.dlc':
    value => 'diff --cached HEAD^'
  }



  # OH MY ZSH
  repository { "${my_sourcedir}/oh-my-zsh":
    source  => 'robbyrussell/oh-my-zsh',
    provider => 'git'
  }

  file { "/Users/${my_username}/.oh-my-zsh":
    ensure  => link,
    target  => "${my_sourcedir}/oh-my-zsh",
    require => Repository["${my_sourcedir}/oh-my-zsh"]
  }


  # VIM
  # theme - chriskempson/tomorrow-theme
  repository { "${my_sourcedir}/tomorrow-theme":
    source  => 'chriskempson/tomorrow-theme',
    provider => 'git'
  }

  # create colors folder
  file { "/Users/${my_username}/.vim/colors":
      ensure => "directory"
  }

  file { "/Users/${my_username}/.vim/colors/Tomorrow-Night.vim":
    ensure  => link,
    target  => "${my_sourcedir}/tomorrow-theme/vim/colors/Tomorrow-Night.vim",
    require => Repository["${my_sourcedir}/tomorrow-theme"]
  }


  # DOTFILES
  repository { "${my_sourcedir}/dotfiles":
    ensure => present,
    source  => 'singuerinc/dotfiles',
    provider => 'git'
  }


  # links
  file { "/Users/${my_username}/.zshrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.zshrc",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.aliases":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.aliases",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.gitattributes":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.gitattributes",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.gitconfig":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.gitconfig",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.gitignore":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.gitignore",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.gvimrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.gvimrc",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.hgignore":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.hgignore",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.hgignore_global":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.hgignore_global",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.slate":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.slate",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.vim":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.vim",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.vimrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.vimrc",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.tmux.conf":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.tmux.conf",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.singuerinc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.singuerinc",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

  file { "/Users/${my_username}/.functions":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.functions",
    require => Repository["${my_sourcedir}/dotfiles"]
  }

#  file { "/Users/${my_username}/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings":
#    ensure  => link,
#    mode    => '0644',
#    target  => "${my_sourcedir}/dotfiles/preferences/Preferences.sublime-settings",
#    require => Repository["${my_sourcedir}/dotfiles"]
#  }

  # osx_defaults
  # exec { "osx_defaults":
  #   command => "${my_sourcedir}/dotfiles/.osx",
  #   require => Repository["${my_sourcedir}/dotfiles"]
  # }
}