class people::singuerinc::applications {

  include brewcask

# include java

  include libpng
  include libtool
  include pcre
  include pkgconfig
# include mongodb
  include mysql
  include wget

#  php::version { '5.6.9':
#    ensure => present
#  }
#  include php::composer

  package { 'adobe-air': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'adobe-creative-cloud': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'android-file-transfer': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'archiver': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'atom': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'google-chrome': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'caffeine': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'daisydisk': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'flux': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'firefox': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'forklift': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'hipchat': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # package { 'intellij-idea': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'iterm2': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'little-snitch': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'macdown': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # psw package { 'mamp': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'phpstorm': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # package { 'pycharm': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'opera': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # package { 'rubymine': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'sequel-pro': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'skype': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'slate': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'spotify': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'sublime-text': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # ??? package { 'subtitles-master': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'transmission': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  # package { 'vmware-fusion': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'vlc': provider => 'brewcask', install_options => ['--appdir=/Applications'] }
  package { 'webstorm': provider => 'brewcask', install_options => ['--appdir=/Applications'] }


  class { 'sourcetree': version => '2.0.5.2' }
  include teamviewer
  include virtualbox
  class { 'vagrant': version => '1.7.2' }
  package { 'tmux': install_options => '--fresh' }
  package { 'htop':}
  package { 'ack':}
  package { 'tree':}
  package { 'subliminal':}
  include spf13vim3
  include autojump
}
