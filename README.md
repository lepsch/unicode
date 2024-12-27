unicode
=======

Unicode characters library auto generated from http://www.unicode.org.

Version 1.0.0

Unicode Version 16.0.0

Example:

```dart
import 'package:unicode/unicode.dart' as unicode;

void main(List<String> args) {
  var ch = unicode.toRune('я');
  if (unicode.isLowerCaseLetter(ch)) {
    print('${char2Str(ch)} is lowercase letter');
  }

  ch = unicode.toRune('{');
  if (unicode.isOpenPunctuation(ch)) {
    print('${char2Str(ch)} is open punctuation');
  }

  ch = unicode.toRune('©');
  if (unicode.isOtherSymbol(ch)) {
    print('${char2Str(ch)} is other symbol');
  }

  ch = unicode.toRune('ǁ');
  if (unicode.isOtherLetter(ch)) {
    print('${char2Str(ch)} is other letter');
  }

  ch = unicode.charToTitleCase(unicode.toRune('ǆ'));
  print('${char2Str(ch)} is title case of ǆ');

  ch = unicode.charToUpperCase(unicode.toRune('ǆ'));
  print('${char2Str(ch)} is upper case of ǆ');
}

String char2Str(int c) {
  return String.fromCharCode(c);
}

```

Output:

```
я is lowercase letter
{ is open punctuation
© is other symbol
ǁ is other letter
ǅ is title case of ǆ
Ǆ is upper case of ǆ
```