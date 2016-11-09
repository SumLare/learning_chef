#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do
  context 'When platform is centos with version 7.2.1511' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.2.1511')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'start and enable apache2' do
      expect(chef_run).to start_service('apache2')
      expect(chef_run).to enable_service('apache2')
    end
  end
end
