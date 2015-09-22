
require 'spec_helper'

describe 'vim::bundle' do
  let(:title) { 'jhaals/puppet-vim' }
  let(:facts) { { :boxen_user => 'jhaals' } }

  it do
    should contain_repository('/Users/jhaals/.vim/bundle/puppet-vim').with({
      'source' => 'jhaals/puppet-vim'
    })
  end
end
