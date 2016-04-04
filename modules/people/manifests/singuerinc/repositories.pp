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

  # DOTFILES
  repository { "${my_sourcedir}/dotfiles":
    ensure => present,
    source  => 'singuerinc/dotfiles',
    provider => 'git'
  }

  repository { "${my_sourcedir}/themes/dracula-theme":
    ensure => present,
    source => 'zenorocha/dracula-theme',
    provider => 'git'
  }

  repository { "${my_sourcedir}/themes/gruvbox-contrib":
    ensure => present,
    source => 'morhetz/gruvbox-contrib',
    provider => 'git'
  }

  repository { "${my_sourcedir}/themes/Smyck-Color-Scheme":
    ensure => present,
    source => 'hukl/Smyck-Color-Scheme',
    provider => 'git'
  }

  repository { "${my_sourcedir}/themes/iTerm2-Color-Schemes":
    ensure => present,
    source => 'mbadolato/iTerm2-Color-Schemes',
    provider => 'git'
  }

  repository { "${my_sourcedir}/oh-my-zsh/custom/plugins/zsh-autosuggestions":
    ensure => present,
    source => 'zsh-users/zsh-autosuggestions',
    provider => 'git',
    require => Repository["${my_sourcedir}/oh-my-zsh"]
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

  # osx_defaults
  # exec { "osx_defaults":
  #   command => "${my_sourcedir}/dotfiles/.osx",
  #   require => Repository["${my_sourcedir}/dotfiles"]
  # }
}
