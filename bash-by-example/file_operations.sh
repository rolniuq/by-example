# cat: display the contents of a file, copy text file, combine text file, create new text file
cat temp/filename
cat temp/file1 temp/file2
cat temp/file1 temp/file2 > temp/newcombinedfile
cat < temp/file1 > temp/file2 # copy file1 to file2

# chomod: change the permissions of a file
chmod 755 temp/filename # 755 is octal notation for 755, which is 7 for user, 5 for group, and 5 for others

# cp: copy a file from one location to other
cp temp/file1 temp/file1_copy

# diff: compare lines and list their diff
diff temp/file1 temp/file2

# file: determine file type
file temp/index.html

# find: find files in directory
find . -name "filename"

# gzip: compress a file
gzip temp/filename

# gunzip: decompress a file
gunzip temp/filename.gz

# gzcat: display the contents of a compressed file
gzcat temp/filename.gz

# head: display the first 10 lines of a file
head temp/filename

# less: display the contents of a file
less temp/filename

# lpq: check out the printer queue
lpq

# lpr: print a file
lpr temp/filename

# lprm: remove a file from the printer queue
lprm temp/filename

# ls: list files
ls temp/filename

# more: show the first part of a file (move with space and type q to quite)
more temp/filename

# mv: move a file from location to other
mv temp/file1 temp/file1_moved

# rm: remove a file
rm temp/file1_copy

# tail: output the last 10 lines of file. Use -f to output appended date as the file grows
tail temp/filename

# touch: create a file
touch temp/filename_touched
