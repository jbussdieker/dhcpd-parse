class Rparser::Parser
  rule
    document  : statements { puts "BOOM1"; return val } 

    statements : /* none */
               | statements statement {
                   if val[0]
                     puts "statements"
                     return val[0] << val[1]
                   end
                   if val[1]
                     puts "statement"
                     return [val[1]]
                   end
                 }

    statement : comment { return { :comment => val[0] } }
              | semicolon
              | keyword ipaddress semicolon { return { val[0] => val[1] } }
              | keyword integer semicolon { return { val[0] => val[1] } }
              | keyword keyword block semicolon { return { val[0] => { val[1] => val[2] } } }
              | keyword keyword integer semicolon { return { val[0] => { val[1] => val[2] } } }
              | keyword keyword iplist semicolon { return { val[0] => { val[1] => val[2] } } }
              | keyword keyword semicolon { return { val[0] => val[1] } }
              | keyword string semicolon { return { val[0] => val[1] } }
              | keyword semicolon { return { val[0] => true } }
              | keyword keyword string semicolon { return { val[0] => { val[1] => val[2] } } }
              | keyword ipaddress keyword ipaddress block semicolon { return { val[0] => val[1], val[2] => val[3], :block => val[4] } }

    iplist    : ipaddress comma ipaddress

    block     : lcurly statements rcurly { return val[1] }
end
