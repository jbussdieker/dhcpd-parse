#!/usr/bin/env ruby
require 'rparser'
require 'yaml'

begin
  parser = Rparser::Parser.new
  result = parser.scan_str(ARGF.read)
  puts "=== RESULT ==="
  puts result.to_yaml
rescue Rparser::Parser::ScanError => e
  puts "ScanError: #{e.message}"
rescue Racc::ParseError => e
  puts "ParseError: #{e.message}"
end
