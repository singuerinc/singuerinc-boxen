# Public: Install gcc via homebrew
#
# Examples
#
#   include gcc
class gcc {

  case $::operatingsystem {
    'Darwin': {
      include homebrew

      ensure_resource('homebrew::tap',
        'homebrew/versions', { 'ensure' => 'present' })

      homebrew::formula { 'gcc5': }

      package { 'boxen/brews/gcc5':
        ensure  => '5.1.0',
        require => Homebrew::Tap['homebrew/versions']
      }
    }

    default: {
      package { 'gcc': }
    }
  }

}
