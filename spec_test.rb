require 'test/unit'

class Spec_test < Test::Unit::TestCase

  def setup
    if File.open("spec").read == ""
      system("echo spec > spec ; rspec test_spec.rb > spec")
    end if File.exist?("spec")
  end

  def test_spec
    if File.open("spec").read != ""
      assert true
    end if File.exist?("spec")
  end

  def teardown
    system("touch test ; touch spec ; rspec test_spec.rb > spec") if !File.exist?("spec")
  end

end
