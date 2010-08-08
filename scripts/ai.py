z = 0

def getMoveX():
	global z
	z += 1
	if z % 999 == 0:
		return 1
	return 0

def getMoveY():
	return 0
