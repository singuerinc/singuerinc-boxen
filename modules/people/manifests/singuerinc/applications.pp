class people::singuerinc::applications {

  include brewcask
  include libpng
  include libtool
  include pcre
  include pkgconfig
# include mongodb
# include mysql
  include spf13vim3

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
			'sublime-text3',
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
      'aria2',
      'ccat',
      'autojump',
      'htop',
      'httpie',
      'lynx',
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
  # package { 'vim': install_options => '--with-lua' }

  package {
    [
      'adobe-air',
      'adobe-creative-cloud',
      'android-file-transfer',
      'appzapper',
      'atom',
      'boom',
      'cheatsheet',
      'chromium',
      'daisydisk',
      'dockertoolbox',
      'dropbox',
      'enjoyable',
      'firefox',
      'flux',
      'forklift',
      'google-chrome',
      'handbrake',
      'hex-fiend',
      'imageoptim',
  	  'insomniax',
      'iterm2',
      'iterm2-beta',
      'java6',
      'keka',
      'macdown',
      'opera',
      'sequel-pro',
      'skype',
      'slack',
      'slate',
      'sourcetree',
      'spotify',
      'teamviewer',
      'torbrowser',
      'transmission',
#      'vagrant',
      'virtualbox',
      'vlc',
      'webstorm'
    ]:
      provider => 'brewcask',
      install_options => ['--appdir=/Applications']
  }
}
