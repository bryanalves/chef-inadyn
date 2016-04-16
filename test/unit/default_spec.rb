require 'spec_helper'

describe 'inadyn::default' do
  context 'no providers' do
    let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

    it 'should install the package' do
      expect(chef_run).to install_package('inadyn')
    end

    it 'should have a reasonable config file' do
      expect(chef_run).to render_file('/etc/inadyn.conf').with_content(%r{logfile /var/log/inadyn/inadyn.log})
    end
  end

  context 'with a provider' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.node.set['inadyn']['conf']['providers'] = [
        {
          username: 'userPASS',
          password: 'passPASS',
          alias: 'aliasPASS'
        }
      ]
      runner.converge(described_recipe)
    end

    it 'should have the provider in the config' do
      expect(chef_run).to render_file('/etc/inadyn.conf').with_content(/userPASS/)
    end
  end
end
