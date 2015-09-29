class Rparser::Parser
macro
  COMMENT     \#.*(?=$)
  NEWLINE     \n
  BLANK       \s+
  KEYWORD     [a-zA-Z][a-zA-Z\-_]+
  INTEGER     \d+
  SEMICOLON   ;
  LCURLY      {
  RCURLY      }
  COMMA       ,
  STRING      \"[^"]*\"
  IPADDR      \d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}
rule
  {NEWLINE}
  {COMMENT}   { [:comment, text] }
  {COMMA}     { [:comma, text] }
  {KEYWORD}   { [:keyword, text] }
  {BLANK}
  {IPADDR}    { [:ipaddress, text] }
  {INTEGER}   { [:integer, text] }
  {SEMICOLON} { [:semicolon, text] }
  {LCURLY}    { [:lcurly, text] }
  {RCURLY}    { [:rcurly, text] }
  {STRING}    { [:string, text] }
inner
end
