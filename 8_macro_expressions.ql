import cpp

from MacroInvocation mi
where mi.getMacroName().regexpMatch("ntoh(s|l{1,2})")
select mi.getExpr()
