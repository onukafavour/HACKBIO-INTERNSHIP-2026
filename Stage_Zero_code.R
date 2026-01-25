# Assignment of variables
my_name         <- "Onuka Favour"           # Full name
university      <- "Redeemer's University"   # University affiliation
program_level   <- "MSc student"            # Academic program
gene_of_interest <- "IL-6"                  # Favorite gene (interleukin-6)
kingdom          <- "Animalia"              # Biological kingdom where gene is found

# assigning paste0() to a variable
intro_sentence <- paste0(
  "My name is ", my_name, ", an ", program_level, 
  " at the prestigious ", university, 
  ". My favorite gene is ", gene_of_interest, " in ", kingdom, ".")

#Print out the complete sentence
print(intro_sentence)
