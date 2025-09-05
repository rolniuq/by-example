# -i: Perform case-insensitive matching.
# -w: Match whole words only.
# -n: Display line numbers along with matching lines.
# -v: Invert the match, printing lines that do not match the pattern.
# -c: Count the number of matching lines.
# -A NUM: Print NUM lines after a match.
# -B NUM: Print NUM lines before a match.
# -C NUM: Print NUM lines around a match (before and after).
# -E: Interpret patterns as extended regular expressions (ERE), which offer more features than basic regular expressions (BRE).
# -P: Interpret patterns as Perl-compatible regular expressions (PCRE), providing even more advanced features.

grep -i "pattern" ./testdata/file.txt
grep -w "word" ./testdata/file.txt
grep -n "pattern" ./testdata/file.txt
grep -v "pattern" ./testdata/file.txt
grep -c "pattern" ./testdata/file.txt
grep -A 3 "pattern" ./testdata/file.txt
grep -B 2 "pattern" ./testdata/file.txt
grep -C 1 "pattern" ./testdata/file.txt
grep -E "extended_pattern" ./testdata/file.txt
grep -P "perl_pattern" ./testdata/file.txt
