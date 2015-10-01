class Rparser::Parser
  rule
    document  : statements

    statements : /* none */
               | statements statement {
                   return val[0] << val[1] if val[0]
                   return [val[1]] if val[1]
                 }

    statement : comment
              | keyword ipaddress block { return key_value_value(:ipaddress, :options, val) }
              | keyword integer datetime semicolon { return key_value_value(:integer, :datetime, val) }
              | keyword keyword keyword semicolon  { return { val[0] => { val[1] => val[2] } } }
              | keyword keyword macaddr semicolon  { return key_value_value('hardware-type', 'mac-address', val) }
              | keyword string semicolon { return key_value(val) }

    block     : lcurly statements rcurly { return val[1] }
end

---- inner
def key_value_value(key1, key2, val)
  return { val[0] => { key1 => val[1], key2 => val[2] } } 
end

def key_value(val)
  return { val[0] => val[1] }
end
