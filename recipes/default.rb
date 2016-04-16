package 'inadyn'

service 'inadyn' do
  action [:enable, :start]
end

template '/etc/inadyn.conf' do
  source 'inadyn.conf.erb'
  user 'root'
  group 'root'

  variables(
    conf: node['inadyn']['conf']
  )
end
