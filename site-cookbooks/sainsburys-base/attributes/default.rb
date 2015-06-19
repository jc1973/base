default['sainsburys-base']['apps'] = {
    'dig' => '',
    'git-common' => '',
    'htop' => '',
    'iftop' => '',
    'lsof' => '',
    'mlocate' => '',
    'netstat' => '',
    'ngrep' => '',
    'nmap' => '',
    'openssh-server' => '',
    'screen' => '',
    'strace' => '',
    'telnet' => '',
    'tree' => '',
    'vim' => '',
  }

case node['platform_family']
when 'redhat', 'centos', 'rhel'
  default['sainsburys-base']['apps'] = {
    'nc' => '',
  }
when 'debian', 'ubuntu'
  default['sainsburys-base']['apps'] = {
    'chromium-browser' => '',
    'netcat' => '',
  }
end
