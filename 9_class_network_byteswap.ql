import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(
        MacroInvocation mi | 
        mi.getMacroName().regexpMatch("ntoh(s|l{1,2})") 
          and this = mi.getExpr())  // https://msrc-blog.microsoft.com/2018/08/16/vulnerability-hunting-with-semmle-ql-part-1/
  }
}

from NetworkByteSwap n
select n
