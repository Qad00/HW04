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


sortedList = sorted(dictionary.items(), key = lambda kv:(kv[1], kv[0]), reverse=True)
	
key_list = [x[0] for x in sortedList]
val_list = [x[1] for x in sortedList]
 
for i in range(int(sys.argv[2])): 
	print('{:<s}{:>{width}}'.format(key_list[i], val_list[i],width = 10))  
