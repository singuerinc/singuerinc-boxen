class people::singuerinc::applications {

  include brewcask
  include libpng
  include libtool
  include pcre
  include pkgconfig
# include mongodb
  include mysql
  include spf13vim3

  homebrew::tap { 'caskroom/versions': }
  homebrew::tap { 'caskroom/fonts': }
  homebrew::tap { 'casidiablo/custom': }
  homebrew::tap { 'singuerinc/homebrew-casks': }

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
			'affinity-designer',
			'affinity-photo'
		]:
		provider => 'brewcask',
		install_options => ['--appdir=/Applications'],
		require => Homebrew::Tap['singuerinc/homebrew-casks']
	}

	package {
		[
			'popcorn-time',
		]:
		provider => 'brewcask',
		require => Homebrew::Tap['casidiablo/custom']
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
			'tig',
      'tree',
      'wget',
      'z'
    ]:
  }

  package { 'tmux': install_options => '--fresh' }

  package {
    [
      'android-file-transfer',
      'atom',
      'google-chrome',
      'google-chrome-canary',
      'enjoyable',
      'flux',
      'firefox',
      'forklift',
      'hipchat',
      'imageoptim',
			'insomniax',
      'iterm2',
      'keka',
      'macdown',
      'nvalt',
      'openemu',
      'opera',
      'sequel-pro',
      'shiori',
      'skype',
      'slack',
      'slate',
      'spotify',
      'sourcetree',
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
