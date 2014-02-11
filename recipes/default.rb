#
# Cookbook Name:: mdadm
# Recipe:: default
#
# Copyright 2012, Phil Cohen
#

package "mdadm"

if node['platform'] == "ubuntu"
  template "/etc/initramfs-tools/conf.d/mdadm" do
    owner 'root'
    group 'root'
    mode '0644'
    source 'initramfs-tools_conf.d_mdadm.erb'
  end
end
