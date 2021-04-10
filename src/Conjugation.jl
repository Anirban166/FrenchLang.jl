# Author: Anirban166 | Last updated: 11/04/21
println("Enter a French verb") 
verb = readline()
base = chop(verb, tail = 2)
if endswith(verb, "er")
  println("Je ", base, "e\n",
          "Tu ", base, "es\n",
          "Il ", base, "e\n",  
          "Elle ", base, "e\n",
          "Ils ", base, "ent\n",  
          "Elles ", base, "ent\n",
          "Vous ", base, "ez\n",
          "Nous ", base, "ons")  
elseif endswith(verb, "ir")
  println("Je ", base, "is\n",
          "Tu ", base, "is\n",
          "Il ", base, "it\n",
          "Elle ", base, "it\n",
          "Ils ", base, "issent\n", 
          "Elles ", base, "issent\n",
          "Vous ", base, "issez\n",
          "Nous ", base, "issons") 
elseif endswith(verb, "re")
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
