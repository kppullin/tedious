try
  Iconv = require('iconv').Iconv
catch exception
  # Do nothing, as Iconv is an optional dependency.

exports.codepageByLcid =
  1025: 'WINDOWS-1256'
  1029: 'WINDOWS-1250'
  1030: 'WINDOWS-1252'
  1032: 'WINDOWS-1253'
  1033: 'WINDOWS-1252'
  1034: 'WINDOWS-1252'
  1035: 'WINDOWS-1252'
  1036: 'WINDOWS-1252'
  1037: 'WINDOWS-1255'
  1038: 'WINDOWS-1250'
  1039: 'WINDOWS-1252'
  1045: 'WINDOWS-1250'
  1048: 'WINDOWS-1250'
  1049: 'WINDOWS-1251'
  1050: 'WINDOWS-1250'
  1051: 'WINDOWS-1250'
  1052: 'WINDOWS-1250'
  1054: 'WINDOWS-874'
  1055: 'WINDOWS-1254'
  1058: 'WINDOWS-1251'
  1060: 'WINDOWS-1250'
  1061: 'WINDOWS-1257'
  1062: 'WINDOWS-1257'
  1063: 'WINDOWS-1257'
  1066: 'WINDOWS-1258'
  2052: 'WINDOWS-936'
  3082: 'WINDOWS-1252'
  66567: 'WINDOWS-1252'
  66574: 'WINDOWS-1250'
  66615: 'WINDOWS-1252'
  133124: 'WINDOWS-936'

exports.iconvByLcid = {}
for lcid, codepage of exports.codepageByLcid
  if Iconv
    exports.iconvByLcid[lcid] = new Iconv(codepage, 'UTF-8')
  else
    exports.iconvByLcid[lcid] = undefined