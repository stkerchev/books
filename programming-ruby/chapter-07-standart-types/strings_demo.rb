# frozen_string_literal: true

puts "\n\tCases I"
# str.capitalize => Return a copy of str capitalized # "string" => "String"
p 'two words'.capitalize
# str.downcase => Return a lowercase copy of str # "STRING" => "string"
p 'TEst'.downcase
# str.upcase => Return a uppercase copy of str # "string" => "STRING"
p 'test'.upcase
# str.swapcase => Return a swapped case copy of str # "String" => "sTRING"
p 'two WORDS'.swapcase

puts "\n\tSearch / Replace I"
# str.index(str2) => Return index of first occurrence of str2 in str
p 'hello'.index('l') # => 2
# str.rindex(str2) => Return the index of the last occurrence of str2 in str
p 'hello'.rindex('l') # => 3
# str.start_with?(str2) => Return true if str starts with str2
p 'hello'.start_with?('h') # => true
# str.include?(str2) => Return true if str includes str2
p 'hello'.include?('l') # => true
# str.end_with?(str2) => Returns true if str ends with str2
p 'hello'.end_with?('o') # => true

puts "\n\tModification I"
# str + str2 => Return a new string adding str2 to str # "one" + "two" => "onetwo"
# str[start,length] = str2 => Replace str from start to length with str2
# str[regexp] = str2 => Replace str using regexp with str2
# str.chomp => Return a new string with carriage return characters removed from str # "hello\r\n" => "hello"
p "hello\r".chomp
# str << str2 => Modify str in place by appending str2 to the end
# str[index] = str2 => Replace str at index with str2
# str.chop => Return a new string with last character removed from str # "string" => "strin"
# str.succ => Return successor to str (increment characters starting from rightmost alphachar in string) # "abcd" => "abce"
# str.prepend(str2) => Prepend str2 to str
# str.reverse => Return a new string with the characters from str in reverse order # "abcd" => "dcba"
# str.insert(index, str2) => Insert str2 before the character at the given index, modifying str

# Substrings I
# str[start,length] => Element Reference - pass a start and a length, return a substring of length characters from start
# str[regexp] => Element Reference - pass a Regexp and return the matching portion of the str
# str[range] => Element Reference - pass a range using beginning and end as offsets delimiting the substr to be returned
# str.chars => Return an array of characters in str
# str.chr => Return a one-character string at the beginning of str
# str * integer => Copy - return a new String containing integer copies of str.
# str.lines => Return an array of lines in str
# str.split(str2) => Return array of substrings by dividing str based on str2

# Whitespace I
# str.center(width, padstr) => Center str in width padded with padstr
# str.lstrip => Return a copy of str with leading whitespace removed
# str.strip => Return a copy of str with leading and trailing whitespace removed
# str.rstrip => Return a copy of str with trailing whitespace removed
# str.rstrip! => Modify str by removing trailing whitespace
# str.lstrip! => Modify str with leading whitespace removed
# str.ljust(length, str2) => Return a new string of length with str left justified and padded with str2
# str.rjust(length, str2) => Return a new string of length with str right justified and padded with str2
# str.strip! => Modify str by removing leading and trailing whitespace

# Comparison I
# str == obj => Equality - return whether string is equal to obj
# str =` obj => Match - if obj is a Regexp, use it as a pattern to match against str, and return the position.
# str <=> str2 => Compare - return -1, 0, +1 or nil depending on str is less than, eq to, or greater than str2
# str.eql?(str2) => Return true if str is equal to str2 by length and content

# Conversion I
# str.hash => Return a hash based on str's length, content, and encoding
# str.hex => Return number of str as hexadecimal digits
# str.oct => Return octal number of str
# str.to_i => Convert str to integer
# str.to_f => Convert str to float
# str.to_c => Convert str to complex number
# str.to_r => Convert str to rational number
# str.to_sym => Convert str to symbol

# Search / Replace II
# str.gsub(regexp, other_hash) => Return a copy of str with all occurrences of regexp substituted with values of matched keys in other_hash
# str.gsub!(str1, str2) => Modify str by replacing all occurrences of str1 with str2
# str.index(regexp) => Return index of first occurrence of regexp in str
# str.partition(regexp) => Search regexp in str and return part before it, the match, and the part after it in an array
# str.match(pattern) => Convert pattern to regexp and invoke its match method on str
# str.gsub(str1, str2) => Return a copy of str with all occurrences of str1 replaced with str2
# str.partition(str2) => Search str2 in str and return part before it, the match, and part after in an array
# str.gsub(regexp, str2) => Return a copy of str with all occurrences of regexp substituted with str2
# str.sub(regexp, str2) => Return copy of str with first occurrence of regexp replaced by str2

# Cases II
# str.downcase! => Modify str by replacing all uppercase letters with lowercase letters
# str.capitalize! => Modify str by converting the first character to uppercase and the remainder to lowercase
# str.casecmp(str2) => Case-insensitive compare of str with str2
# str.swapcase! => Modify str by swapping case of all characters
# str.upcase! => Modify string by replacing lowercase characters with uppercase characters

# Search / Replace III
# str.scan(regexp) => Return an array of strings matching regexp of str
# str.replace(str2) => Replace the contents and taintedness of str with str2
# str.tr(from_str, to_str) => Return copy of str with characters in from_str replaced by characters in to_str
# str.sub!(regexp, str2) => Modify str by replacing first occurrence of regexp with str2
# str.tr_s(from_str, to_str) => Translate str replacing from_str with to_str then remove duplicate characters in translated regions
# str.tr!(from_str, to_str) => Translate str in place by replacing from_str with to_str
# str.rpartition(str2) => Search str2 in str from end of str and return part before it, the match, and part after in an array

puts "\n\tInspection I"
# str.ascii_only? => Return true for a str which has only ASCII characters
p 'бял'.ascii_only?
# str.count(str2) => Count of str2 characters in str
p 'remove vowels'.count('aeiou')
# str[index] => Element Reference - pass a single index, and return a substring of one character at that index
p 'hello'[1]
# str.encoding => Return the encoding of str
p 'бял'.encoding
# str.empty? => Return true if str has a length of zero
p ' '.empty?
# str.inspect => Return a printable version of str, surrounded by quote marks, with special characters escaped
p "hello o'a \n ".inspect
# str.length => Return character length of str (option 1)
# str.size => Return the character length of str (option 2)
# str.sum => Return a basic checksum of the characters in str
p 'a'.sum
# str.valid_encoding? => Returns true if str is encoded correctly

# Iteration I
# str.each_byte => Pass each byte in str to a block
# str.each_char => Pass each character in str to a block
# str.each_codepoint => Pass Integer ordinal of each character in str to a block
# str.each_line => Pass each line of string to a block
# str.upto(str2) => Iterate through successive values of str, starting at str and ending at str2 inclusive

# Modification II
# str % arg => Format - use str as a format specification, and return the result of applying it to arg
# str.chomp! => Modify str in place by removing carriage return characters from end of str
# str.chop! => Modify str in place by removing last character
# str.clear => Make str empty
# str.delete(str2) => Return a copy of str with all characters of str2 deleted
# str.delete!(str2) => Modify str by deleting all characters of str2 set
# str.squeeze => Return copy of str where runs of the same character are replaced by a single character
# str.scrub(char) => Replace invalid bytes with given replacement char
# str.reverse! => Modify str by reversing it in place
# str.succ! => Modify str by incrementing characters starting from right most aphanumeric char (successor)

# Conversion II
# str.b => Return a copied string whose encoding is ASCII-8BIT
# str.codepoints => Return an array of the Integer ordinals of the characters in str
# str.crypt(str2) => Apply a one-way cryptographic hash to str with given salt str2
# str.intern => Return symbol corresponding to str, creating the symbol if it did not previously exist
# str.ord => Return integer ordinal of one-character string
# str.encode(str2) => Return a copy of str transcoded to encoding str2
# str.unpack(str2) => Return array of decoded str using str2 as format
# str.dump => Produce a version of str with all non-printing characters replace and all special characters escaped

# Bytes I
# str.bytes => Return an array of bytes in str
# str.bytesize => Return the length of str in bytes
# str.byteslice(index) => Byte Reference - return a substring of one byte at index of str
# str.byteslice(start, length) => Byte Reference - return substring from start to length of str
# str.byteslice(range) => Byte Reference - return substring containing bytes at offsets given by range of str
# str.getbyte(index) => Return the indexth byte of str as an integer
# str.setbyte(index, integer) => Modify the indexth byte as integer
