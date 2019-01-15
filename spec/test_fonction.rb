require_relative '../lib/caesar_cipher'

decribe "doit crypter le texte entrer en utilisant la clef de chiffrement" do
  it "remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, dans l'ordre de l'alphabet" do
    expect(new_ascii_code?("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end