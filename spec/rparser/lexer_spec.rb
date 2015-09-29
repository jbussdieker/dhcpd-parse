require 'spec_helper'
require 'rparser/lexer'

describe "Lexer" do
  before do
    @lexer = Rparser::Parser.new
  end

  def tokenize(text)
    tokens = []
    @lexer.scan_setup(text)
    while token = @lexer.next_token
      tokens << token
    end
    tokens
  end

  def lexer_test(example)
    example.each do |text, tokens|
      tokenize(text).should eql(tokens)
    end
  end

  it "should work" do
    example = {"hello" => [
      [:LINE, "hello"]
    ]}
    lexer_test(example)
  end

  it "should work with newlines" do
    example = {"hello\nworld!" => [
      [:LINE, "hello"],
      [:NEWLINE, "\n"],
      [:LINE, "world!"]
    ]}
    lexer_test(example)
  end
end
