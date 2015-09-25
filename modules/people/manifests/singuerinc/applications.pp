class people::singuerinc::applications {

  include brewcask
  include libpng
  include libtool
  include pcre
  include pkgconfig
# include mongodb
  include mysql
  include spf13vim3

#  php::version { '5.6.9':
#    ensure => present
#  }
#  include php::composer

  package { 'tmux': install_options => '--fresh' }

  # package { 'intellij-idea': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # package { 'pycharm': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # package { 'rubymine': provider => 'brewcask', install_options => ['--appdir=/Applications'] }

  homebrew::tap { 'caskroom/versions': }
  homebrew::tap { 'caskroom/fonts': }
  homebrew::tap { 'neovim/neovim': }

  package {
    [
      'font-fira-mono',
      'font-hack',
      'font-inconsolata-for-powerline',
      'font-lato',
      'font-monoid',
      'font-open-sans',
      'font-ubuntu-mono-powerline'
    ]:
    provider => 'brewcask',
    require  => Homebrew::Tap['caskroom/fonts']
  }

  package {
    [
      'aria2',
      'ccat',
      'autojump',
      'htop',
      'httpie',
      'peco',
      'subliminal',
      'the_silver_searcher',
      'tree',
      'wget',
      'z'
    ]:
  }

  package {
    [
      'neovim'
    ]:
    install_options => ['--HEAD'],
    provider => 'homebrew',
    require  => Homebrew::Tap['neovim/neovim']
  }

  package {
    [
      'adobe-air',
      'adobe-creative-cloud',
      'android-file-transfer',
      'appzapper',
      'atom',
      'google-chrome',
      'google-chrome-canary',
      'caffeine',
      'daisydisk',
      'enjoyable',
      'flux',
      'firefox',
      'forklift',
      'hipchat',
      'imageoptim',
      'iterm2',
      'keka',
      'little-snitch',
      'macdown',
      'mamp',
      'nvalt',
      'phpstorm',
      'openemu',
      'opera',
      'sequel-pro',
      'shiori',
      'skype',
      'slack',
      'slate',
      'spotify',
#      'sourcetree',
      'sublime-text',
      'teamviewer',
      'tig',
      'transmission',
      'vagrant',
      'virtualbox',
      'vlc',
      'webstorm'
    ]:
      provider => 'brewcask',
      install_options => ['--appdir=/Applications']
  }
}
