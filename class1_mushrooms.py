def generation(lst, emp_lst):
		from random import choice, randrange
		copy_lst = lst.copy()
		emp_lst = copy_lst.pop(randrange(3))
		if emp_lst == []:
			emp_lst = copy_lst.pop(randrange(2))
		emp_lst = choice(emp_lst)
		return ''.join(emp_lst)

class Mushrooms():
	pois_point = 0
	edb_point = 0
	unk_point = 0
	def __init__(self):
		self.__lst_cap_shape = [['knobbed'], ['bell'], ['conica', 'convex', 'flat', 'sunken']]
		self.__cap_shape = []
		self.__lst_cap_surface = [['fibrous'], [], ['grooves', 'scaly', 'smooth']]
		self.__cap_surface= []
		self.__lst_cap_color = [['buff'], ['white'],['brown', 'cinnamon', 'gray', 'green', 'pink', 'purple', 'red', 'yellow']]
		self.__cap_color = []
		self.__lst_odor = [['creosote', 'fishy', 'foul', 'musty', 'pungent', 'spicy'], ['almond', 'anise', 'none'], []]
		self.__odor = []
		self.__lst_gill_attachment = [[], ['attached'], ['free']]
		self.__gill_attachment = []
		self.__lst_gill_spacing = [[], ['crowded'], ['close']]
		self.__gill_spacing = []
		self.__lst_gill_size = [[], ['broad'], ['narrow']]
		self.__gill_size = []
		self.__lst_gill_color = [['buff', 'chocolate', 'gray'], ['black', 'brown', 'purple', 'white', 'yellow'], ['green', 'orange', 'pink', 'red']]
		self.__gill_color = []
		self.__lst_stalk_root = [['missing'], ['club', 'equal'], ['bulbous', 'rooted']]
		self.__stalk_root = []
		self.__lst_stalk_surface_above_and_below_ring = [['silky'], ['fibrous', 'smooth', 'scaly'], []]
		self.__stalk_surface_above_and_below_ring = []
		self.__lst_stalk_color_above_and_below_ring = [['brown', 'buff', 'pink'], ['gray', 'white', 'orange'], ['cinnamon', 'red', 'yellow']]
		self.__stalk_color_above_and_below_ring = []
		self.__lst_ring_number = [[], ['two'], ['none', 'one']]
		self.__ring_number = []
		self.__lst_ring_type = [['large'], ['pendant'], ['evanescent', 'flaring', 'none']]
		self.__ring_type = []
		self.__lst_population = [['several'], ['abundant', 'clustered', 'numerous', 'scattered'], ['solitary']]
		self.__population = []
		self.__lst_habitat = [['leaves', 'paths', 'urban'], ['meadows'], ['grasses', 'waste', 'woods']]
		self.__habitat = []
		self.__lst_bruises = [['nothing'], ['bruises'], []]
		self.__bruises = []
	

	def gen_mushroom(self):
		self.__habitat_gened = generation(self.__lst_habitat, self.__habitat)
		if self.__lst_habitat[0].count(self.__habitat_gened) == 1:
			self.pois_point += 1
		elif self.__lst_habitat[1].count(self.__habitat_gened) == 1:
			self.edb_point += 1
		elif self.__lst_habitat[2].count(self.__habitat_gened) == 1:
			self.unk_point += 1
		
		self.__population_gened = generation(self.__lst_population, self.__population)
		if self.__lst_population[0].count(self.__population_gened) == 1:
			self.pois_point += 1
		elif self.__lst_population[1].count(self.__population_gened) == 1:
			self.edb_point += 1
		elif self.__lst_population[2].count(self.__population_gened) == 1:
			self.unk_point += 1
		
		print('In %s i see %s mushrooms.'% (self.__habitat_gened, self.__population_gened))
		
		self.__cap_shape_gened = generation(self.__lst_cap_shape, self.__cap_shape)
		if self.__lst_cap_shape[0].count(self.__cap_shape_gened) == 1:
			self.pois_point += 1
		elif self.__lst_cap_shape[1].count(self.__cap_shape_gened) == 1:
			self.edb_point += 1
		elif self.__lst_cap_shape[2].count(self.__cap_shape_gened) == 1:
			self.unk_point += 1
		
		self.__cap_surface_gened = generation(self.__lst_cap_surface, self.__cap_surface)
		if self.__lst_cap_surface[0].count(self.__cap_surface_gened) == 1:
			self.pois_point += 1
		elif self.__lst_cap_surface[1].count(self.__cap_surface_gened) == 1:
			self.edb_point += 1
		elif self.__lst_cap_surface[2].count(self.__cap_surface_gened) == 1:
			self.unk_point += 1
		
		self.__cap_color_gened = generation(self.__lst_cap_color, self.__cap_color)
		if self.__lst_cap_color[0].count(self.__cap_color_gened) == 1:
			self.pois_point += 1
		elif self.__lst_cap_color[1].count(self.__cap_color_gened) == 1:
			self.edb_point += 1
		elif self.__lst_cap_color[2].count(self.__cap_color_gened) == 1:
			self.unk_point += 1
		
		print('It has %s %s %s cap'% (self.__cap_shape_gened, self.__cap_surface_gened, self.__cap_color_gened))
		
		self.__odor_gened = generation(self.__lst_odor, self.__odor)
		if self.__lst_odor[0].count(self.__odor_gened) == 1:
			self.pois_point += 1
		elif self.__lst_odor[1].count(self.__odor_gened) == 1:
			self.edb_point += 1
		elif self.__lst_odor[2].count(self.__odor_gened) == 1:
			self.unk_point += 1
		
		print('This mushroom has %s odor' % self.__odor_gened)
		
		print('If you dig up the mushroom, I can see gills, rings and root.')
		
		self.__gill_attachment_gened = generation(self.__lst_gill_attachment, self.__gill_attachment)
		if self.__lst_gill_attachment[0].count(self.__gill_attachment_gened) == 1:
			self.pois_point += 1
		elif self.__lst_gill_attachment[1].count(self.__gill_attachment_gened) == 1:
			self.edb_point += 1
		elif self.__lst_gill_attachment[2].count(self.__gill_attachment_gened) == 1:
			self.unk_point += 1
		
		self.__gill_spacing_gened = generation(self.__lst_gill_spacing, self.__gill_spacing)
		if self.__lst_gill_spacing[0].count(self.__gill_spacing_gened) == 1:
			self.pois_point += 1
		elif self.__lst_gill_spacing[1].count(self.__gill_spacing_gened) == 1:
			self.edb_point += 1
		elif self.__lst_gill_spacing[2].count(self.__gill_spacing_gened) == 1:
			self.unk_point += 1
		
		self.__gill_size_gened = generation(self.__lst_gill_size, self.__gill_size)
		if self.__lst_gill_size[0].count(self.__gill_size_gened) == 1:
			self.pois_point += 1
		elif self.__lst_gill_size[1].count(self.__gill_size_gened) == 1:
			self.edb_point += 1
		elif self.__lst_gill_size[2].count(self.__gill_size_gened) == 1:
			self.unk_point += 1
		
		self.__gill_color_gened = generation(self.__lst_gill_color, self.__gill_color)
		if self.__lst_gill_color[0].count(self.__gill_color_gened) == 1:
			self.pois_point += 1
		elif self.__lst_gill_color[1].count(self.__gill_color_gened) == 1:
			self.edb_point += 1
		elif self.__lst_gill_color[2].count(self.__gill_color_gened) == 1:
			self.unk_point += 1
		
		print("Mushroom's gills are %s, %s, %s and has %s color" % (self.__gill_size_gened, self.__gill_attachment_gened, self.__gill_spacing_gened, self.__gill_color_gened))
		
		self.__stalk_root_gened = generation(self.__lst_stalk_root, self.__stalk_root)
		if self.__lst_stalk_root[0].count(self.__stalk_root_gened) == 1:
			self.pois_point += 1
		elif self.__lst_stalk_root[1].count(self.__stalk_root_gened) == 1:
			self.edb_point += 1
		elif self.__lst_stalk_root[2].count(self.__stalk_root_gened) == 1:
			self.unk_point += 1
		
		print('Roots are %s' % self.__stalk_root_gened)
		
		self.__stalk_surface_above_and_below_ring_gened = generation(self.__lst_stalk_surface_above_and_below_ring, self.__stalk_surface_above_and_below_ring)
		if self.__lst_stalk_surface_above_and_below_ring[0].count(self.__stalk_surface_above_and_below_ring_gened) == 1:
			self.pois_point += 1
		elif self.__lst_stalk_surface_above_and_below_ring[1].count(self.__stalk_surface_above_and_below_ring_gened) == 1:
			self.edb_point += 1
		elif self.__lst_stalk_surface_above_and_below_ring[2].count(self.__stalk_surface_above_and_below_ring_gened) == 1:
			self.unk_point += 1
		
		self.__stalk_color_above_and_below_ring_gened = generation(self.__lst_stalk_color_above_and_below_ring, self.__stalk_color_above_and_below_ring)
		if self.__lst_stalk_color_above_and_below_ring[0].count(self.__stalk_color_above_and_below_ring_gened) == 1:
			self.pois_point += 1
		elif self.__lst_stalk_color_above_and_below_ring[1].count(self.__stalk_color_above_and_below_ring_gened) == 1:
			self.edb_point += 1
		elif self.__lst_stalk_color_above_and_below_ring[2].count(self.__stalk_color_above_and_below_ring_gened) == 1:
			self.unk_point += 1
		
		self.__ring_number_gened = generation(self.__lst_ring_number, self.__ring_number)
		if self.__lst_ring_number[0].count(self.__ring_number_gened) == 1:
			self.pois_point += 1
		elif self.__lst_ring_number[1].count(self.__ring_number_gened) == 1:
			self.edb_point += 1
		elif self.__lst_ring_number[2].count(self.__ring_number_gened) == 1:
			self.unk_point += 1
		
		self.__ring_type_gened = generation(self.__lst_ring_type, self.__ring_type)
		if self.__lst_ring_type[0].count(self.__ring_type_gened) == 1:
			self.pois_point += 1
		elif self.__lst_ring_type[1].count(self.__ring_type_gened) == 1:
			self.edb_point += 1
		elif self.__lst_ring_type[2].count(self.__ring_type_gened) == 1:
			self.unk_point += 1

		if self.__ring_number_gened == 'none':
			print("It hasn't rings")
		else:
			print("It has %s %s ring(s). Stalk above and below ring(s) %s and has %s surface." % (self.__ring_number_gened, self.__ring_type_gened, self.__stalk_color_above_and_below_ring_gened, self.__stalk_surface_above_and_below_ring_gened))
		
		self.__bruises_gened = generation(self.__lst_bruises, self.__bruises)
		if self.__lst_bruises[0].count(self.__bruises_gened) == 1:
			self.pois_point += 1
		elif self.__lst_bruises[1].count(self.__bruises_gened) == 1:
			self.edb_point += 1
		elif self.__lst_bruises[2].count(self.__bruises_gened) == 1:
			self.unk_point += 1
		
		print('If break off a piece from the mushroom, i will see %s' % self.__bruises_gened)
	

	def point_counter(self):
		print(self.pois_point)
		print(self.edb_point)
		print(self.unk_point)
		

	def is_edible(self):
		if max(self.pois_point, self.edb_point, self.unk_point) == self.pois_point:
			print('Probably poisonous')
		elif max(self.pois_point, self.edb_point, self.unk_point) == self.edb_point:
			print('Probably edible')
		else:
			print("Can't define")

x = Mushrooms()
x.gen_mushroom()
x.point_counter()
x.is_edible()