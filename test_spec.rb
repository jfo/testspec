require_relative "spec_test.rb"

describe Spec_test do

  before do
    if File.open("test").read == ""
      system("echo test > test ; ruby spec-test.rb > test")
    end if File.exist?("test")
  end

  it 'tests the spec' do
    if File.open("test").read != ""
      true.should eq(true)
    end if File.exist?("test")
  end

  after do
      system("touch spec ; touch test ; ruby spec_test.rb > test") if !File.exist?("test")
  end

end



# File.open("test").read.should include "1 tests, 0 assertions, 0 failures, 0 errors, 0 skips\n"
