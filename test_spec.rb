require_relative "spec_test.rb"


describe Spec_test do
  before do
    system("touch spec") if !File.exist? "test"
  end

  it 'tests the spec' do
    if File.exist?("spec")
      File.open("test").read.should include "1 tests, 1 assertions, 0 failures, 0 errors, 0 skips\n"
    else
      true.should eq(true)
    end if File.exist?("test")
  end

  after do
    if File.exist?("test") && File.open("test").read.length > 1
        system("rspec test_spec.rb")
      elsif File.exist?("spec")
        system("ruby spec_test.rb > test")
      end
  end

end



