require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'spf13vim3' do
  it do
    should contain_exec('install-spf13-vim-3').with_command('curl http://j.mp/spf13-vim3 -L | bash -s')
  end
end
