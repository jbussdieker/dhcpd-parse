class Rparser::Parser
  token LINE NEWLINE COMMENT
  rule
    document
      : { return "" }
      | lines
      ;
    lines
      : lines line { return val[0] + val[1] }
      | NEWLINE
      | line
      ;
    line
      : LINE
      | LINE NEWLINE { return val[0] + val[1] }
      ;
end
