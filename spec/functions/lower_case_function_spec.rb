require 'spec_helper'

# hack to enable all the expect syntax (like allow_any_instance_of) in rspec-puppet examples
# RSpec::Mocks::Syntax.enable_expect(RSpec::Puppet::ManifestMatchers)

describe 'lower_case_function', :type => :puppet_function do

  it { is_expected.not_to eq(nil) }
  it { is_expected.to run.with_params().
       and_raise_error(Puppet::ParseError, /Requires 1 argument/) }
  it { is_expected.to run.with_params([]).
       and_raise_error(Puppet::ParseError, /First argument must be a string/) }

  it { is_expected.to run.with_params('test').and_return('blah') }
 
end
