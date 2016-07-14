class people::singuerinc::applications {

  include brewcask
  include libpng
  include libtool
  include pcre
  include pkgconfig
  include spf13vim3

  include atom

  atom::package { 'atom-beautify': }
  atom::package { 'atom-ternjs': }
  atom::package { 'double-tag': }
  atom::package { 'emmet': }
  atom::package { 'file-icons': }
  atom::package { 'jumpy': }
  atom::package { 'language-docker': }
  atom::package { 'language-puppet': }
  atom::package { 'language-smarty': }
  atom::package { 'language-sql-mysql': }
  atom::package { 'last-cursor-position': }
  atom::package { 'linter': }
  atom::package { 'linter-jscs': }
  atom::package { 'linter-jsonlint': }
  atom::package { 'linter-csslint': }
  atom::package { 'linter-htmlhint': }
  atom::package { 'linter-js-yaml': }
  atom::package { 'minimap': }
  atom::package { 'minimap-cursorline': }
  atom::package { 'pigments': }
  atom::package { 'set-syntax': }

  atom::theme   { 'nucleus-dark-ui': }
  atom::theme   { 'gruvbox': }
  atom::theme   { 'dracula': }

  package {
    [
      'aria2',
      'asciinema',
      'autojump',
      'ccat',
      'htop',
      'httpie',
      'lynx',
      'neovim/neovim/neovim',
      'nmap',
      'peco',
      'ssh-copy-id',
      'subliminal',
      'the_silver_searcher',
      'tig',
      'tree',
      'wget',
      'z'
    ]:
  }

  package { 'tmux': install_options => '--fresh' }
  package { 'vim': install_options => '--with-lua' }

  package {
    [
      'adobe-air',
      'adobe-creative-cloud',
      'alfred',
      'android-file-transfer',
      'applepi-baker',
#     'appzapper',
      'boom',
#     'casidiablo/custompopcorn-time',
      'caskroom/fonts/font-camingocode',
      'caskroom/fonts/font-fantasque-sans-mono',
      'caskroom/fonts/font-fira-mono',
      'caskroom/fonts/font-hack',
      'caskroom/fonts/font-inconsolata-for-powerline',
      'caskroom/fonts/font-input',
      'caskroom/fonts/font-lato',
      'caskroom/fonts/font-monoid',
      'caskroom/fonts/font-open-sans',
      'caskroom/fonts/font-share-tech',
      'caskroom/fonts/font-ubuntu-mono-powerline',
      'caskroom/versions/google-chrome-canary',
      'caskroom/versions/openemu-experimental',
#     'cheatsheet',
      'chromium',
      'daisydisk',
#     'dockertoolbox',
      'docker',
      'dropbox',
#     'enjoyable',
      'firefox',
      'flux',
      'forklift',
#     'garmin-express',
      'google-chrome',
      'handbrake',
      'hex-fiend',
      'imageoptim',
      'insomniax',
      'iterm2-beta',
      'java6',
      'keka',
      'macdown',
      'opera',
      'sequel-pro',
# 		'singuerinc/homebrew-casks/affinity-designer',
# 		'singuerinc/homebrew-casks/affinity-photo',
      'skype',
#     'slack',
      'slate',
      'sourcetree',
      'spotify',
      'sublime-text',
      'teamviewer',
      'torbrowser',
      'transmission',
      'virtualbox',
      'vlc',
      'whatsapp',
      'webstorm'
    ]:
      provider => 'brewcask',
      install_options => ['--appdir=/Applications']
  }
}
