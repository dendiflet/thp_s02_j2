
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


def "doit vérifier les saisie utilisateurs"
  it "si des nombres ou symbole sont renter en saisie, nterpeler l'utilisateur du programme" do
    
    expect(check_imput("azerty", 4)).to eq(true)
    expect(check_imput("#aze", 4)).to eq("utilise uniquement l'alphabet romains stp")
    expect(check_imput("aze", nil)).to eq("sans clef de chiffrement ca chiffre rien")
    expect(check_imput("aze", "s")).to eq("un nombre entier stp (hors 0)")
    expect(check_imput("aze", 0)).to eq("un nombre entier stp (hors 0)")
  end
end


def "vérifie que l'aray soit bien de la meme taille que la string saisie"
  it "transforme "

  end
end




















