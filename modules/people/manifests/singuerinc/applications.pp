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

  homebrew::tap { 'caskroom/versions': }
  homebrew::tap { 'caskroom/fonts': }

  package {
    [
      'font-camingocode',
      'font-fantasque-sans-mono',
      'font-fira-mono',
      'font-hack',
      'font-inconsolata-for-powerline',
      'font-input',
      'font-lato',
      'font-monoid',
      'font-open-sans',
      'font-share-tech',
      'font-ubuntu-mono-powerline'
    ]:
    provider => 'brewcask',
    require  => Homebrew::Tap['caskroom/fonts']
  }

# package {
# 	[
# 		'affinity-designer',
# 		'affinity-photo'
# 	]:
# 	provider => 'brewcask',
# 	install_options => ['--appdir=/Applications'],
# 	require => Homebrew::Tap['singuerinc/homebrew-casks']
# }

  package {
    [
      'google-chrome-canary',
      'openemu-experimental'
		]:
		provider => 'brewcask',
		install_options => ['--appdir=/Applications'],
		require => Homebrew::Tap['caskroom/versions']
	}

#	package {
#		[
#			'popcorn-time',
#		]:
#		provider => 'brewcask',
#		require => Homebrew::Tap['casidiablo/custom']
#	}

  package {
    [
      'asciinema',
      'aria2',
      'ccat',
      'autojump',
      'htop',
      'httpie',
      'lynx',
      'neovim/neovim/neovim',
      'nmap',
      'peco',
      'ssh-copy-id',
      'sublime-text',
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
#     'cheatsheet',
      'chromium',
      'daisydisk',
#     'dockertoolbox',
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
      'skype',
#     'slack',
      'slate',
      'sourcetree',
      'spotify',
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
