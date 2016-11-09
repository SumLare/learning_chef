require 'chefspec'

describe 'apache::default' do
  context 'When platform is centos' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.2.1511')
      runner.converge(described_recipe)
    end

    it 'install httpd' do
      expect(chef_run).to install_package('httpd')
    end
  end

  context 'When platform is ubuntu' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'install apache2' do
      expect(chef_run).to install_package('apache2')
    end
  end
end
