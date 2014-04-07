require_relative "spec_test.rb"

describe Spec_test do

  before do
    if File.open("test").read == ""
      system("echo spec > spec")
      system("ruby spec_test.rb > test")
    end if File.exist?("test")
  end

  it 'tests the spec' do
    if File.open("test").read != ""
      # File.open("test").read.should include "1 tests, 0 assertions, 0 failures, 0 errors, 0 skips\n"
      puts "test_spec!\n"
    end if File.exist?("test")
  end

  after do
    system("ruby spec_test.rb > test") if !File.exist?("test")
    # system("rspec test_spec.rb") if !File.exist?("test") && File.open("test").read != ""
  end

end
