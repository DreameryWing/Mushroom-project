lst_n = []
lst_k = []
lst_perc = []
while int(input('000')) == 0:
	lst_n.append(int(input()))
	lst_k.append(int(input()))
for i in range(len(lst_n)):
	a = (lst_k[i] * 100)/lst_n[i]
	a = round(a, 2)
	if a != 100:
		lst_perc.append(a)
		lst_perc.append(100 - a)
	else:
		lst_perc.append(a)
print(lst_perc)
