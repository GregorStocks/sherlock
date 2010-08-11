class AutoRegister(type):
	def __init__(cls, name, bases, dct):
		print "pretend we're registering this now: %s" % cls
		super(AutoRegister, cls).__init__(name, bases, dct)

class Entity(object):
	__metaclass__ = AutoRegister

class Item(Entity):
	def poop(self):
		print "poop"

class State(object):
	def __init__(self, state):
		self.state = state
		self.ids = []
	
	def MakeEntity(self, x, y, icon):
		print 'makin?????'
		id = self.state.MakeEntity(x, y, icon)
		print 'got [id]'
		self.ids.append(id)
