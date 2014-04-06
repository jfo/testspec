gtequire_relative "spec_test.rb"

describe Spec_test do

  before do
    system("ruby spec_test.rb > test") if !File.exist?("test")
  end

  it do
  end

  after do
  end

end
