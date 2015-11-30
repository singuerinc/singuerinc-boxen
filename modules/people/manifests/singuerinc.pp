class people::singuerinc {
	include people::singuerinc::params
	include people::singuerinc::applications
	include people::singuerinc::repositories

	include zsh
	notify { 'class people::singuerinc declared': }
}
