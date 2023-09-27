def puissance(a,b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")
	if not type(b) is int:
		raise TypeError("Only integers are allowed")

	return a ** b
	
#print ("fonctions puissance")
#if not type(vars) is int:
#	resultat = (int(input()))**(int(input()))
#	print (resultat)
#raise TypeError("Only integers are allowed")

