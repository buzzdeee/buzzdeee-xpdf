require 'spec_helper'
describe 'xpdf' do

  context 'with defaults for all parameters' do
    it { should contain_class('xpdf') }
  end
end
