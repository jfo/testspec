require 'test/unit'

class Spec_test < Test::Unit::TestCase

  def setup
    system("touch test") if !File.exist? "spec"
  end

  def test_spec
    if File.exist?("spec")
      assert File.open("test").read.include? "1 tests, 1 assertions, 0 failures, 0 errors, 0 skips\n"
    else
      assert true == true
    end if File.exist?("test")
  end

  def teardown
    if File.exist?("spec") && File.open("spec").read.length > 1
      system("ruby spec_test.rb")
    elsif File.exist?("test")
      system("rspec test_spec.rb > spec")
    end
  end

end
