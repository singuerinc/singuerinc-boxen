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
# homebrew::tap { 'casidiablo/custom': }
# homebrew::tap { 'singuerinc/homebrew-casks': }

  package {
    [
      'font-camingocode',
      'font-fantasque-sans-mono',
      'font-input',
      'font-fira-mono',
      'font-gidole',
      'font-hack',
      'font-inconsolata-for-powerline',
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
      'google-chrome-canary'
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
      'android-file-transfer',
      'atom',
      'boom',
      'chromium',
      'enjoyable',
      'flux',
      'firefox',
      'forklift',
      'google-chrome',
#      'hipchat',
      'imageoptim',
  	  'insomniax',
      'iterm2',
      'handbrake',
      'hex-fiend',
      'java6',
      'keka',
      'macdown',
#      'nvalt',
      'openemu',
      'opera',
      'sequel-pro',
      'shiori',
      'skype',
      'slack',
      'slate',
      'spotify',
      'sourcetree',
      'teamviewer',
      'transmission',
#      'vagrant',
      'virtualbox',
      'vlc',
      'webstorm',
      'whatsdesktop'
    ]:
      provider => 'brewcask',
      install_options => ['--appdir=/Applications']
  }
}
