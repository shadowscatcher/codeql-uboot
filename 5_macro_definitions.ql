import cpp

from MacroInvocation m
// where m.getMacroName() in ["ntohl", "ntohll", "ntohs"]
where m.getMacroName().regexpMatch("ntoh(s|l{1,2})")
select m, "a macro from list named memcpy"
