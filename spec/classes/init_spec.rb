require 'spec_helper'
describe 'role_burp' do

  context 'with defaults for all parameters' do
    it { should contain_class('role_burp') }
  end
end
