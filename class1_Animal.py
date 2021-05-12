def generation(lst, emp_lst):
		from random import choice, randrange
		copy_lst = lst.copy()
		emp_lst = copy_lst.pop(randrange(3))
		if emp_lst == []:
			emp_lst = copy_lst.pop(randrange(2))
		emp_lst = choice(emp_lst)
		return ''.join(emp_lst)

class Animal():

	pois_point = 0
	edb_point = 0
	unk_point = 0

	def __init__(self):
		self.__lst_odor = [['creosote', 'fishy', 'foul', 'musty', 'pungent', 'spicy'], ['almond', 'anise', 'none'], []]
		self.__odor = []
		self.__lst_habitat = [['leaves', 'paths', 'urban'], ['meadows'], ['grasses', 'waste', 'woods']]
		self.__habitat = []
		self.__lst_cap_shape = [['knobbed'], ['bell'], ['conica', 'convex', 'flat', 'sunken']]
		self.__cap_shape = []
		self.__lst_cap_color = [['buff'], ['white'],['brown', 'cinnamon', 'gray', 'green', 'pink', 'purple', 'red', 'yellow']]
		self.__cap_color = []

	def look_around(self):
		print('*looks around*')
		self.__habitat_gened = generation(self.__lst_habitat, self.__habitat)
		if self.__habitat_gened in ['leaves', 'paths', 'urban']:
			print("I'm in %s. Nothing good grows here."% self.__habitat_gened)
			self.pois_point += 1
		elif self.__habitat_gened == 'meadows':
			print("I'm in %s. Good mushrooms often grows here."% self.__habitat_gened)
			self.edb_point += 1
		elif self.__habitat_gened in ['grasses', 'waste', 'woods']:
			print("I'm in %s. I can find different mushrooms here."% self.__habitat_gened)
			self.unk_point += 1

	def look_on_mushroom(self):
		print('*looks on cap*')
		self.__cap_shape_gened = generation(self.__lst_cap_shape, self.__cap_shape)
		if self.__cap_shape_gened == 'knobbed':
			print('Cap has knobbed shape. It is not good sign.')
			self.pois_point += 2
		elif self.__cap_shape_gened == 'bell':
			print('Cap has bell shape. I often eat mushrooms with bell cap. It is good.')
			self.edb_point += 2
		elif self.__cap_shape_gened in ['conica', 'convex', 'flat', 'sunken']:
			print('Cap has %s shape. It hard to define' % self.__cap_shape_gened)
			self.unk_point += 2

		self.__cap_color_gened = generation(self.__lst_cap_color, self.__cap_color)
		if self.__cap_color_gened == 'buff':
			print('Cap is buff. It bad.')
			self.pois_point += 1
		elif self.__cap_color_gened == 'white':
			print('Cap is white. Very good!.')
			self.edb_point += 1
		elif self.__cap_color_gened in ['brown', 'cinnamon', 'gray', 'green', 'pink', 'purple', 'red', 'yellow']:
			print("Cap is %s. I... don't know." % self.__cap_color_gened)
			self.unk_point += 1

	def smell(self):
		self.__odor_gened = generation(self.__lst_odor, self.__odor)
		if self.__odor_gened in ['creosote', 'fishy', 'foul', 'musty', 'pungent', 'spicy']:
			print('Yuck! Smell is awful!')
			self.pois_point += 3
		elif self.__odor_gened in ['almond', 'anise', 'none']:
			print('Smells good')
			self.edb_point += 3

	def is_edible(self):
		if max(self.pois_point, self.edb_point, self.unk_point) == self.pois_point:
			print('Probably poisonous')
		elif max(self.pois_point, self.edb_point, self.unk_point) == self.edb_point:
			print('Probably edible')
		else:
			print("Can't define")

x = Animal()
x.look_around()
x.look_on_mushroom()
x.smell()
x.is_edible()