caesar_cipher("What a string!", 5)
"Bmfy f xywnsl!"

def ask_user_string
	put "salut, met un mots a coder stp"
	print ">"
	imputed_string = gets.chomp
	return imputed_string
end

def ask_user_key
	puts "une clef de chiffrement (rentre un nombre entre 1 et 123565769954211134556)"
	print ">"
	crypto_key = gets.chomp
	return crypto_key
end


def check_imputed_string(string_splitted_in_array)
	string_splitted_in_array.each {|char_ascii| char_ascii != /[65:90]/ || char_ascii != /[97:122] || char_ascii != /[32]/ ? puts "utilise uniquement l'alphabet romains stp" }
	return "utilise uniquement l'alphabet romains stp"
end
	
def check_imputed_key(crypto_key)
	if crypto_key.class == Integer && crypto_key == 0
		then crypto_key_cheked_good = true
		return crypto_key_cheked_good
	else 
		crypto_key_cheked_good = false
		puts "mauvaise clef de chiffrement, rentre un nombre entre 1 et 123565769954211134556"
		return crypto_key_cheked_good
	end	
end

def crypto_key_resizer(crypto_key)
  if crypto_key > 25
    then 
	  resizer = (crypto_key/25).to_i
	  crypto_key_resized = crypto_key - resizer * 25
	else
	  crypto_key_resized = crypto_key
  end
  return crypto_key_resized
end


#découpage de mon imputed string
def string_imput_to_array(imputed_string)
	string_splitted_in_array = imputed_string.each_char.map(&:to_s)
	return string_splitted_in_array
end


#array découpé par charactère est converti en ascii
def acssi_array_converter(string_splitted_in_array)
	ascii_converted_array = string_splitted_in_array.map {|char| char = char.ord }
	return ascii_converted_array
end


#moulinette
def new_ascii_code(non_coded_char_ascii, crypto_key_resized)


  if non_coded_char_ascii =~[65:90]
	new_ascii = non_coded_char_ascii + crypto_key_resized					#nouvelle clef ascii chiffrée de majuscule, elle peut sortir du cadre
	
	if new_ascii > 90													#remet dans le range ascii si dépasse
	  then
		coded_char_ascii = new_ascii - 9O + 64
	  else
	  	coded_char_ascii = new_ascii
    end
  
	return coded_char_ascii

  elsif non_coded_char_ascii =~[97:122]									
	  new_ascii = non_coded_char_ascii + crypto_key_resized 				#nouvelle clef ascii chiffrée de minuscule, elle peut sortir du cadre

	if new_ascii > 122												##remet dans le range ascii si dépasse
	  then
		coded_char_ascii = new_ascii - 122 + 96
	  else
	  	coded_char_ascii = new_ascii	
	end

	  return coded_char_ascii

  elsif non_coded_char_ascii == 32										#espace reste epace
	coded_char_ascii = 32
	return coded_char_ascii
  end

end

def array_coder(ascii_converted_array)
  ascii_converted_array.map {|non_coded_char_ascii| array_ascii_coded << new_ascii_code(non_coded_char_ascii,crypto_key_resized)}
end

def array_coded_stringer (array_ascii_coded)
	string_coded = array_ascii_coded.join
	puts string_coded
	retur string_coded
end

def perform
	ask_user_string
	ask_user_key
	crypto_key_resizer(crypto_key)
	string_imput_to_array(imputed_string)
	acssi_array_converter(string_splitted_in_array)
	array_coder(ascii_converted_array)
	array_coded_stringer(array_ascii_coded)
end





















