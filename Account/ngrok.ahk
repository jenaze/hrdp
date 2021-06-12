num -= 1
 Numpad0::

string1 := RandChar(8)
string2 = @
string3 := RandChar(5)
string4 = .
string5 := RandChar(2)
final = %string1%%string2%%string3%%string4%%string5%
Send %final%
Send {tab}
Send %final%
Send {tab}
Send %final%
Send {tab}
Send {space}
Return
RandChar(L)
{
   Characters := "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
   CharStr := ""
   Loop % L
   {
      Random, Rand, 1, StrLen(Characters)
      CharStr := CharStr . SubStr(Characters, Rand, 1)
   }
   Return CharStr
}
NumpadDot::
reload
return
