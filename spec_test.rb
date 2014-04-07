require 'test/unit'

class Spec_test < Test::Unit::TestCase

  def setup
    if File.open("spec").read == ""
      system("echo test > test")
      system("rspec test_spec.rb > spec")
    end if File.exist?("spec")
  end

  def test_spec
    if File.open("spec").read != ""
      puts "spec_test!\n"
    end if File.exist?("spec")
  end

  def teardown
    system("rspec test_spec.rb > spec") if !File.exist?("spec")
  end

end
