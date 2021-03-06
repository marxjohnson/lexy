#
#

case node[:platform]
when "debian", "ubuntu"
  package "git-core"
else 
  package "git"
end

%w(vim screen).each do |p|
  package p
end

directory node[:data] do
  mode "0755"
  action :create
  recursive true
end
