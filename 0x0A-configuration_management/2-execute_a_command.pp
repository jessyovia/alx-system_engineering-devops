# 2-execute_a_command.pp
# Puppet manifest to execute a command to kill a process named 'killmenow'

exec { 'killmenow':
  command => 'pkill -f killmenow',
}

