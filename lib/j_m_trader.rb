puts "\e[H\e[2J"
a = [17, 3, 6, 9, 15, 8, 6, 1, 10]			#en index le jour; en valeur la valeur de l'action
b = a.length
z = {}
gains =[]

a.each_index do |buying_day| 		#variation du jours d'achat
gains = []
  (b - buying_day).times do |selling_day|		#value = l'array des gains possibles

gains[selling_day] = (a[buying_day + selling_day]  - a[buying_day])


	z["jour d'achat #{buying_day}"] = gains

		end 

	end


puts "#{z}"
puts "#{z.values.max}"


