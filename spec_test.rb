require 'test/unit'

class Spec_test < Test::Unit::TestCase

  def setup
    system("rspec test_spec.rb > spec") if !File.exist?("spec")
  end

  def test_spec
  end

  def teardown
  end

end
