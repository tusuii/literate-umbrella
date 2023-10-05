#1. Stuttering Function

#stutter("incredible") ➞ "in... in... incredible?"

#stutter("enthusiastic") ➞ "en... en... enthusiastic?"

#stutter("outstanding") ➞ "ou... ou... outstanding?"

def stutter(word):
	print(f"{word[0:2]}... {word[0:2]}... {word}?")
	
stutter("incredible")
	
