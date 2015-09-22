require 'spec_helper'

describe 'libpng' do
  let(:pre_condition) { "class homebrew {}" }

  it { should contain_class('libpng') }
  it { should contain_package('libpng') }
end
