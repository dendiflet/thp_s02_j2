caesar_cipher("What a string!", 5)
"Bmfy f xywnsl!"

def imput_string_splitter(imputed_string)
	array_splitted_string = imputed_string.split.ord
end






def check_imputed_string(array_splitted_string)
	array_splitted_string.each {|char_ascii| char_ascii != /[65:90]/ || char_ascii != /[97:122] || char_ascii != /[32]/ ? puts "utilise uniquement l'alphabet romains stp" }
	return "utilise uniquement l'alphabet romains stp"
end
	
def check_imputed_key(crypto_key)
	if crypto_key.class == Integer && crypto_key == 0
		then crypto_key_cheked = "good"

	else 
		crypto_key_cheked = ""
	crypto_key_cheked = crypto_key.class
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
end



def new_ascii_code(array_splitted_string, crypto_key_resized)
  

  if array_splitted_string =~[65:90]
	new_ascii = array_splitted_string + crypto_key_resized					#nouvelle clef ascii chiffrée de majuscule, elle peut sortir du cadre
	
	if new_ascii > 90													#remet dans le range ascii si dépasse
	  then
		new_ascii_sized = new_ascii - 9O + 64
	  return new_ascii_sized
    end
  

  elsif array_splitted_string =~[97:122]									
		new_ascii = array_splitted_string + crypto_key_resized 				#nouvelle clef ascii chiffrée de minuscule, elle peut sortir du cadre

	if new_ascii > 122												##remet dans le range ascii si dépasse
	  then
		new_ascii_sized = new_ascii - 122 + 96
		return new_ascii_sized
	end

  elsif array_splitted_string == 32										#espace reste epace
	new_ascii_sized = 32
	return 32
  end

end




