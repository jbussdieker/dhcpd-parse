#!/usr/bin/env ruby
require 'rparser'
require 'yaml'

begin
  parser = Rparser::Parser.new
  tokens = []
  parser.scan_setup(ARGF.read)
  puts "=== RESULT ==="
  while token = parser.next_token
    puts ":#{token.first} =>  #{token.last}"
    tokens << token
  end
  tokens
rescue Rparser::Parser::ScanError => e
  puts "ScanError: #{e.message}"
end
