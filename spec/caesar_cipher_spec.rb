
describe "ici la decription de la fonction testée" do
  
  it "elle doit faire ceci" do
    expect(nom_de_la_fonction?(argument1, argument2)).to eq(resultat_escompter)
    #`met ici un deuxième test de la fonction`
  end

end



##vrai fichier

require_relative '../lib/caesar_cipher'

decribe "doit crypter le texte entrer en utilisant la clef de chiffrement" do
  it "remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, dans l'ordre de l'alphabet" do
    expect(caesar_cipher?("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end






















