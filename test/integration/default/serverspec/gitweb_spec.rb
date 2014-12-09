require 'serverspec'
set :backend, :exec

describe command 'apache2ctl -S | grep git' do
  its(:stdout) { should match(/port 80 namevhost git\.mydomain\.com/) }
end
