#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'
module Rparser
  class Parser < Racc::Parser

def key_value_value(key1, key2, val)
  return { val[0] => { key1 => val[1], key2 => val[2] } } 
end

def key_value(val)
  return { val[0] => val[1] }
end
##### State transition tables begin ###

racc_action_table = [
     5,     6,    10,     8,     9,    15,     5,     6,    11,    22,
    16,    17,    14,     7,    13,    19,    20,    21,     3 ]

racc_action_check = [
    18,    18,     6,     6,     6,    10,     2,     2,     6,    18,
    10,    11,     9,     3,     8,    14,    15,    16,     1 ]

racc_action_pointer = [
   nil,    18,     4,    13,   nil,   nil,    -1,   nil,     4,     6,
     2,     4,   nil,   nil,     8,     9,    10,   nil,    -2,   nil,
   nil,   nil,   nil ]

racc_action_default = [
    -2,   -11,    -1,   -11,    -3,    -4,   -11,    23,   -11,   -11,
   -11,   -11,    -5,    -2,   -11,   -11,   -11,    -9,   -11,    -6,
    -7,    -8,   -10 ]

racc_goto_table = [
     2,     1,    12,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    18 ]

racc_goto_check = [
     2,     1,     4,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     2 ]

racc_goto_pointer = [
   nil,     1,     0,   nil,    -6 ]

racc_goto_default = [
   nil,   nil,   nil,     4,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 13, :_reduce_none,
  0, 14, :_reduce_none,
  2, 14, :_reduce_3,
  1, 15, :_reduce_none,
  3, 15, :_reduce_5,
  4, 15, :_reduce_6,
  4, 15, :_reduce_7,
  4, 15, :_reduce_8,
  3, 15, :_reduce_9,
  3, 16, :_reduce_10 ]

racc_reduce_n = 11

racc_shift_n = 23

racc_token_table = {
  false => 0,
  :error => 1,
  :comment => 2,
  :keyword => 3,
  :ipaddress => 4,
  :integer => 5,
  :datetime => 6,
  :semicolon => 7,
  :macaddr => 8,
  :string => 9,
  :lcurly => 10,
  :rcurly => 11 }

racc_nt_base = 12

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "comment",
  "keyword",
  "ipaddress",
  "integer",
  "datetime",
  "semicolon",
  "macaddr",
  "string",
  "lcurly",
  "rcurly",
  "$start",
  "document",
  "statements",
  "statement",
  "block" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

def _reduce_3(val, _values, result)
                   return val[0] << val[1] if val[0]
                   return [val[1]] if val[1]
                 
    result
end

# reduce 4 omitted

def _reduce_5(val, _values, result)
 return key_value_value(:ipaddress, :options, val) 
    result
end

def _reduce_6(val, _values, result)
 return key_value_value(:integer, :datetime, val) 
    result
end

def _reduce_7(val, _values, result)
 return { val[0] => { val[1] => val[2] } } 
    result
end

def _reduce_8(val, _values, result)
 return key_value_value('hardware-type', 'mac-address', val) 
    result
end

def _reduce_9(val, _values, result)
 return key_value(val) 
    result
end

def _reduce_10(val, _values, result)
 return val[1] 
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Rparser
