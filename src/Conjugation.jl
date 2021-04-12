# Author: Anirban166 | Last updated: 11/04/21
while true
  println("Enter a regular French verb / Entrez un verbe français") 
  verbFR = readline()
  base = chop(verbFR, tail = 2)
  println("Enter its English translation / Entrez sa traduction en anglais")
  verbEN = readline()
  println("Conjugated verbs: (simple present tense, indicative mood, first/second/third person) / Verbes conjugués: (temps du présent simple, mode indicatif, première/deuxième/troisième personne)")  
  if endswith(verbFR, "er")
    println("Je ", base, "e (I ", verbEN, ")\n",
            "Tu ", base, "es (You ", verbEN, " - informal)\n",
            "Il ", base, "e (He ", verbEN, "s)\n",  
            "Elle ", base, "e (She ", verbEN, "s)\n",
            "Ils ", base, "ent (They ", verbEN, " - male)\n",  
            "Elles ", base, "ent (They ", verbEN, " - female)\n",
            "Vous ", base, "ez (You ", verbEN, " - formal)\n",
            "Nous ", base, "ons (We ", verbEN, ")")  
  elseif endswith(verbFR, "ir")
    println("Je ", base, "is (I ", verbEN, ")\n",
            "Tu ", base, "is (You ", verbEN, " - informal)\n",
            "Il ", base, "it (He ", verbEN, "s)\n",
            "Elle ", base, "it (She ", verbEN, "s)\n",
            "Ils ", base, "issent (They ", verbEN, " - male)\n", 
            "Elles ", base, "issent (They ", verbEN, " - female)\n",
            "Vous ", base, "issez (You ", verbEN, " - formal)\n",
            "Nous ", base, "issons (We ", verbEN, ")") 
  elseif endswith(verbFR, "re")
    println("Je ", base, " (I ", verbEN, ")\n",
            "Tu ", base, "s (You ", verbEN, " - informal)\n",
            "Il ", base, " (He ", verbEN, "s)\n", 
            "Elle ", base, " (She ", verbEN, "s)\n", 
            "Ils ", base, "ent (They ", verbEN, " - male)\n", 
            "Elles ", base, "ent (They ", verbEN, " - female)\n",
            "Vous ", base, "ez (You ", verbEN, " - formal)\n",
            "Nous ", base, "ons (We ", verbEN, ")") 
  else  
    println("Unknown verb suffix!")
  end
  @label checkpoint
  println("Would you like to try another verb? (Yes/No) / Souhaitez-vous essayer un autre verbe? (Oui/Non)") 
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
