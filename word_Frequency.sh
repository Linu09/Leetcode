# Source : https://leetcode.com/problems/word-frequency/

################################################################################## 
# 
# Write a bash script to calculate the frequency of each word in a text file words.txt.
# 
# For simplicity sake, you may assume:
# 
# words.txt contains only lowercase characters and space ' ' characters.
# Each word must consist of lowercase characters only.
# Words are separated by one or more whitespace characters.
# 
# For example, assume that words.txt has the following content:
# the day is sunny the the
# the sunny is is
# 
# Your script should output the following, sorted by descending frequency:
# 
# the 4
# is 3
# sunny 2
# day 1
# 
# Note:
# Don't worry about handling ties, it is guaranteed that each word's frequency count is unique.
# 
# [show hint]
# Hint:
# Could you write it in one-line using Unix pipes?
##################################################################################

#!/bin/sh

# Read from the file words.txt and output the word frequency list to stdout.

cat words.txt | tr [:space:] "\n" | sed '/^$/d' | tr '[:upper:]' '[:lower:]'|sort|uniq -c|sort -nr | awk '{ print $2,$1}'



##################################################################################
# Explaination
# cat- command is use to open a file on terminal without edit mode
# tr [:space:] "\n" - this will translate all the white spaces with new line 
# sed '/^$/d' - remove all the blank lines from the file
# tr '[:upper:]' '[:lower:]'- convert upper case (if any) to lower case
# sort - sorts the context of file line by line
# uniq -c - how many times each line occurs in the file 
# sort -nr - it sorts the numbers in reverse order (descending)
# awk '{ print $2,$1}' - it prints the second column first and first column second as the above results require words first followed by numbers in descending order
