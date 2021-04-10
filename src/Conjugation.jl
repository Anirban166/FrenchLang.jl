# Author: Anirban166 | Last updated: 11/04/21
println("Enter a French verb / Entrez un verbe français") 
verbFR = readline()
base = chop(verbFR, tail = 2)
println("Enter its English translation / Entrez sa traduction en anglais")
verbEN = readline()
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
  println("Je ", base, "is\n",
          "Tu ", base, "is\n",
          "Il ", base, "it\n",
          "Elle ", base, "it\n",
          "Ils ", base, "issent\n", 
          "Elles ", base, "issent\n",
          "Vous ", base, "issez\n",
          "Nous ", base, "issons") 
elseif endswith(verbFR, "re")
  println("Je ", base, "s\n",
          "Tu ", base, "s\n",
          "Il ", base, "\n", 
          "Elle ", base, "\n", 
          "Ils ", base, "ent\n", 
          "Elles ", base, "ent\n",
          "Vous ", base, "ez\n",
          "Nous ", base, "ons") 
else  
  println("Unknown verb suffix!")
end
