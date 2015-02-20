import random

def generate_sub_queries (numberOfQueries):

	with open('queries.txt') as f:	
	    lines = random.sample(f.readlines(),numberOfQueries)

	text_file = open("300queries.txt", "w")

	for line in lines:
	    text_file.write("%s" % line)

	text_file.close()