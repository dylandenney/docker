#!/bin/bash
#MAINTAINER Dylan_Denney
# Run this script with sudo or as root

# Update the system
yum update -y

# Install ruby requirments
 dnf config-manager --set-enabled powertools
 dnf install epel-release -y
 yum -y install ncurses-devel libffi-devel readline-devel sqlite-devel zlib-devel openssl-devel libyaml-devel

# Install needed and wanted packages
# yum -y groupinstall "Development tools"
 yum -y install wget which man gcc make git

# Installing VIM
 yum remove vim -y
 git clone https://github.com/vim/vim.git
 cd vim/src && ./configure && make && make install
 cd ../../ rm -fr vim
 

# Installing Ruby 3.1.2
 wget https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.2.tar.gz && \
  tar -xf ruby-3.1.2.tar.gz && \
  cd ruby-3.1.2 && \
  ./configure && \
  make && \
  make install
  cd .. && rm -fr ruby-3.1.2 && rm -fr ruby-3.1.2.tar.gz 


# Install Puppet Gems 
 /usr/local/bin/gem install puppet
 /usr/local/bin/gem install puppet-lint
 /usr/local/bin/gem install puppet-syntax
 /usr/local/bin/gem install puppet-syntax
 /usr/local/bin/gem install puppetlabs_spec_helper
 /usr/local/bin/gem install rspec-puppet-facts

# Install Puppet PDK
cd /root && wget -O pdk.latest.el8.x86_64.rpm "https://pm.puppet.com/cgi-bin/pdk_download.cgi?dist=el&rel=8&arch=x86_64&ver=latest"
rpm -ivh pdk.latest.el8.x86_64.rpm


# Further configuration for various tools like VPN, flameshot , If running a GUI

# yum install -y https://dl.technion.ac.il/docs/cis/public/ssl-vpn/ps-pulse-centos-rhel.rpm
# yum install flameshot -y
# yum install remmina -y
# yum install wireshark -y
# yum install terminator -y
# yum install xfce4-terminal -y
# dnf install keepassxc
