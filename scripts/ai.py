import base

from System import Random

randgen = Random()

def getMoveX():
	global randgen
	if randgen.Next(1000) == 0:
		return randgen.Next(-1, 1)
	return 0

def getMoveY():
	global randgen
	if randgen.Next(1000) == 0:
		return randgen.Next(-1, 1)
	return 0
