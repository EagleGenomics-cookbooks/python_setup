

# Inspec test for recipe python_setup::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
describe command('pyenv version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should include('3.7.2') }
end
