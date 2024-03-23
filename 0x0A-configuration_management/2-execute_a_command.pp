# 2-execute_a_command.pp
# Puppet manifest to kill a process named 'killmenow' using pkill

exec { 'killmenow':
  command     => 'pkill killmenow',
  path        => '/usr/bin',
  refreshonly => true,
}

