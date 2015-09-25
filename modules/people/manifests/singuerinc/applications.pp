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

  homebrew::tap { 'caskroom/fonts': }
  homebrew::tap { 'neovim/homebrew-neovim': }

  package {
    [
      'font-hack',
      'font-inconsolata-for-powerline',
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
      'adobe-air',
      'adobe-creative-cloud',
      'android-file-transfer',
      'appzapper',
      'archiver',
      'atom',
      'google-chrome',
      'caffeine',
      'daisydisk',
      'flux',
      'firefox',
      'forklift',
      'hipchat',
      'iterm2',
      'little-snitch',
      'macdown',
      'mamp',
      'nvalt',
      'phpstorm',
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
