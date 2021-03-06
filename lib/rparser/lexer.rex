class Rparser::Parser
macro
  COMMENT     \#.*(?=$)
  DATETIME    \d{4}\/\d{2}\/\d{2}\s\d{2}\:\d{2}\:\d{2}
  MACADDR     [0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}
  IPADDR2     [0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}
  NEWLINE     \n
  BLANK       \s+
  KEYWORD     [a-zA-Z][a-zA-Z\-_0-9\.]+
  INTEGER     \d+
  SEMICOLON   ;
  LCURLY      {
  RCURLY      }
  EQUALS      =
  COMMA       ,
  STRING      \"[^"]*\"
  IPADDR      \d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}
rule
  {NEWLINE}
  {COMMENT}   { [:comment, {:text => text}] }
  {COMMA}     { [:comma, text] }
  {EQUALS}    { [:equals, text] }
  {MACADDR}   { [:macaddr, text] }
  {IPADDR}    { [:ipaddress, text] }
  {IPADDR2}   { [:ipaddress2, text] }
  {KEYWORD}   { [:keyword, text] }
  {BLANK}
  {DATETIME}  { [:datetime, text] }
  {INTEGER}   { [:integer, text] }
  {SEMICOLON} { [:semicolon, text] }
  {LCURLY}    { [:lcurly, text] }
  {RCURLY}    { [:rcurly, text] }
  {STRING}    { [:string, text] }
inner
end
