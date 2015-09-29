require 'rparser'

describe Rparser do
  before do
    @parser = Rparser::Parser.new
  end

  it "should work" do
    @parser.scan_str("").should eql("")
  end

  it "should work" do
    @parser.scan_str("\n").should eql("\n")
  end

  it "should work" do
    @parser.scan_str("hello").should eql("hello")
  end

  it "should work" do
    @parser.scan_str("hello\nworld!").should eql("hello\nworld!")
  end
end
