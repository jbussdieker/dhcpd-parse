require 'spec_helper'

describe "Parser" do
  def parser_test(example)
    @parser = ParserMock.new(example)
    @parser.parse
  end

  it "should work" do
    example = []
    parser_test(example)
  end

  it "should work with newline" do
    example = [[:NEWLINE, "\n"]]
    parser_test(example)
  end

  it "should work with line" do
    example = [[:LINE, "hello"]]
    parser_test(example)
  end

  it "should work with lines" do
    example = [[:LINE, "hello"], [:NEWLINE, "\n"], [:LINE, "world!"]]
    parser_test(example)
  end
end
