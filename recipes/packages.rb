#
# Cookbook Name:: twemproxy
# Recipe:: packages
#
# Copyright 2015, Mindera
#

package 'autoconf' do
  version '2.69-11.el7'
end

unless node['twemproxy']['packages'].empty?
  package node['twemproxy']['packages'] do
    action :install
  end
end
