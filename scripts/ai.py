import base

from System import Random

randgen = Random()

def get_move():
	global randgen
	if randgen.Next(1000) == 0:
		return randgen.Next(-1, 1)
	return 0
