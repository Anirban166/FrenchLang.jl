# Author: Anirban166 | Last updated: 11/04/21
while true
  println("Enter a French word to pluralize / Entrez un mot français à mettre au pluriel") 
  word = readline()
  if endswith(word, "s") || endswith(word, "x") || endswith(word, "z")
    println("Plural version / Version plurielle: ", word)  
  elseif endswith(word, "eau") || endswith(word, "eu") || endswith(word, "ou")
    println("Plural version / Version plurielle: ", word, "x")  
  elseif endswith(word, "al")
    println("Plural version / Version plurielle: ", chop(word, tail = 1), "ux")  
  else  
    println("Plural version / Version plurielle: ", word, "s") 
  end
  @label checkpoint
  println("Would you like to try another word? (Yes/No) / Souhaitez-vous essayer un autre mot? (Oui/Non)") 
  choice = readline()
  if issubset([choice], ["Yes", "yes", "Oui", "oui"])
    continue
  elseif issubset([choice], ["No", "no", "Non", "non"])
    break
  else
    @warn "Please enter Yes/No! / Veuillez entrer Oui/Non!"
    @goto checkpoint
  end
end
