#!/usr/bin/python3
import sys
import re

if __name__=='__main__':
	if(len(sys.argv) == 3): 
		list_of_words = []
		with open(sys.argv[1], 'r') as file: 
			for line in file:
				list_line_words = re.split(r'\s*[-=+/.,!#$@%^&\s\t\n]\s*', line.strip())
				list_of_words.extend(list_line_words)
				list_of_words = [elem for elem in list_of_words if elem != ''] 
	else:
		print("usage: %s <text_filename> <number> " % sys.argv[0])  
		exit()



dictionary = {}
for word in list_of_words:
	dictionary[word] = dictionary.get(word, 0) + 1


print()
print()
sortedDic = sorted(dictionary.items(), key = lambda kv:(kv[1], kv[0]), reverse=True)
print("sorted dictionary by values")
print(sortedDic) 
