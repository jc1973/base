require_relative '../spec_helper'

describe 'sainsburys-base::default' do

  # Use an explicit subject
  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

  it 'installs apps' do
    expect(chef_run).to include_recipe('sainsburys-base::_apps')
    expect(chef_run).to install_package('dig')
    expect(chef_run).to install_package('git-common')
    expect(chef_run).to install_package('htop')
    expect(chef_run).to install_package('iftop')
    expect(chef_run).to install_package('lsof')
    expect(chef_run).to install_package('mlocate')
    expect(chef_run).to install_package('netstat')
    expect(chef_run).to install_package('ngrep')
    expect(chef_run).to install_package('nmap')
    expect(chef_run).to install_package('openssh-server')
    expect(chef_run).to install_package('screen')
    expect(chef_run).to install_package('strace')
    expect(chef_run).to install_package('telnet')
    expect(chef_run).to install_package('tree')
    expect(chef_run).to install_package('vim')
  end

  it 'creates users' do
    expect(chef_run).to include_recipe('sainsburys-base::_users')
    expect(chef_run).to create_users_manage('sysadmin')
  end

end
