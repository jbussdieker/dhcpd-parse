require 'rparser/parser'

class ParserMock < Rparser::Parser
  attr_accessor :tokens

  def initialize(tokens)
    @tokens = tokens
  end

  def next_token
    @tokens.shift
  end

  def parse
    do_parse
  end
end
