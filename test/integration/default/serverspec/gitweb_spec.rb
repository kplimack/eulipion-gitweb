require 'serverspec'
set :backend, :exec

describe command 'apache2ctl -S | grep git' do
  its(:stdout) { should match /port 80 namevhost git\.default\.vagrantup\.com \(\/etc\/apache2\/sites-enabled\/git\.default\.vagrantup\.com\.conf:1\)/ }
end
