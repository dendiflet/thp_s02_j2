
def ask_user_string
	puts "salut, met un mots a coder stp"
	print ">"
	return gets.chomp
end

def ask_user_key
	puts "une clef de chiffrement (rentre un nombre entre 1 et 123565769954211134556)"
	print ">"
	return  gets.chomp.to_i
end


# def check_imputed_string(string_splitted_in_array)
# 	string_splitted_in_array.each {|char_ascii| char_ascii != /[65:90]/ || char_ascii != /[97:122] || char_ascii != /[32]/ ? puts "utilise uniquement l'alphabet romains stp" }
# 	return "utilise uniquement l'alphabet romains stp"
# end
	
# def check_imputed_key(crypto_key)
# 	if crypto_key.class == Integer && crypto_key == 0
# 		then crypto_key_cheked_good = true
# 		return crypto_key_cheked_good
# 	else 
# 		crypto_key_cheked_good = false
# 		puts "mauvaise clef de chiffrement, rentre un nombre entre 1 et 123565769954211134556"
# 		return crypto_key_cheked_good
# 	end	
# end

def crypto_key_resizer(crypto_key)
  if crypto_key > 25
	  resizer = (crypto_key/25).to_i
	  crypto_key_resized = crypto_key - resizer * 25
	else
	  crypto_key_resized = crypto_key
  end
  return crypto_key_resized
end


#découpage de mon imputed string
def arrayer(imputed_string)
	string_splitted_in_array = imputed_string.each_char.map(&:to_s)

	return string_splitted_in_array
end


#array découpé par charactère est converti en ascii
def array_in_ascii_converter(string_splitted_in_array)
	array_in_ascii = string_splitted_in_array.map {|char| char = char.ord }	
	return array_in_ascii
end


#moulinette
def new_ascii_code(non_coded_value_in_ascii, crypto_key_resized)

  if non_coded_value_in_ascii >= 65 && non_coded_value_in_ascii <= 90
	new_ascii = non_coded_value_in_ascii + crypto_key_resized					#nouvelle clef ascii chiffrée de majuscule, elle peut sortir du cadre
	
	if new_ascii > 90													#remet dans le range ascii si dépasse
	  then
		coded_char_ascii = new_ascii - 90 + 64
	  else
	  	coded_char_ascii = new_ascii
    end
  
	return coded_char_ascii

  elsif non_coded_value_in_ascii >= 97 && non_coded_value_in_ascii <= 122 
							
	  new_ascii = non_coded_value_in_ascii + crypto_key_resized 				#nouvelle clef ascii chiffrée de minuscule, elle peut sortir du cadre

	if new_ascii > 122												##remet dans le range ascii si dépasse
	  then
		coded_char_ascii = new_ascii - 122 + 96
	  else
	  	coded_char_ascii = new_ascii	
	end

	  return coded_char_ascii

  elsif non_coded_value_in_ascii == 32										#espace reste epace
	coded_char_ascii = 32
	return coded_char_ascii
  end

end

def array_coder(array_in_ascii, crypto_key_resized)
  
  array_ascii_coded = array_in_ascii.map {|non_coded_value_in_ascii| new_ascii_code(non_coded_value_in_ascii, crypto_key_resized )}

  return array_ascii_coded
end

def array_coded_stringer (array_ascii_coded)
	string_coded = array_ascii_coded.map {|values_coded| values_coded.chr}.join
	return string_coded
end

def perform
	puts "\e[H\e[2J"
	imputed_string = ask_user_string
	crypto_key = ask_user_key
	crypto_key_resized = crypto_key_resizer(crypto_key)
#	puts "voici la clef crypto de la bonne taille : #{crypto_key_resized}"
	string_splitted_in_array = arrayer(imputed_string)
#	puts "voici la string splitée en array" 
#	print "#{string_splitted_in_array}"
#	puts " "
	array_in_ascii = array_in_ascii_converter(string_splitted_in_array)
#	puts "voici l'array en ascii" 
#	print "#{array_in_ascii}"
#	puts " "
	array_ascii_coded = array_coder(array_in_ascii, crypto_key_resized)
 # 	puts "voici le codage de l'array en ascii" 
 #	print "#{array_ascii_coded}"
 #	puts " "
	string_coded = array_coded_stringer(array_ascii_coded)
	puts "voici la phrase codée : "
	puts "#{string_coded}"
end

perform




















