# # encoding: utf-8

# Inspec test for recipe python_setup::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command('python --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('Python 3.6.7') }
end

describe command('pyenv version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should include('3.6.7') }
end
