# TASK 2: PROTEIN MOLECULAR WEIGHT CALCULATOR

calculate_protein_weight <- function(protein_sequence = "KACHI") {
  # Create a named vector of amino acid weights (in Daltons)
  aa_weights <- c(
    A = 89.09,   # Alanine
    R = 174.20,  # Arginine
    N = 132.12,  # Asparagine
    D = 133.10,  # Aspartic Acid
    C = 121.15,  # Cysteine
    E = 147.13,  # Glutamic Acid
    Q = 146.15,  # Glutamine
    G = 75.07,   # Glycine
    H = 155.16,  # Histidine
    I = 131.18,  # Isoleucine
    L = 131.18,  # Leucine
    K = 146.19,  # Lysine
    M = 149.21,  # Methionine
    F = 165.19,  # Phenylalanine
    P = 115.13,  # Proline
    S = 105.09,  # Serine
    T = 119.12,  # Threonine
    W = 204.23,  # Tryptophan
    Y = 181.19,  # Tyrosine
    V = 117.15   # Valine
  )
  
  # Convert input to uppercase
  protein_upper <- toupper(protein_sequence)
  
  # Split protein sequence into individual amino acids
  amino_acids <- strsplit(protein_upper, "")[[1]]
  
  # Initialize total weight
  total_weight_da <- 0
  
  # Loop through each amino acid
  for (aa in amino_acids) {
    # Check if amino acid is valid (exists in our table)
    if (aa %in% names(aa_weights)) {
      # Add weight to total
      total_weight_da <- total_weight_da + aa_weights[aa]
    } else {
      # Invalid character found, return 0
      cat("Warning: Invalid amino acid '", aa, "' found. Returning 0.\n", sep = "")
      return(0)
    }
  }
  
  # Convert from Daltons to KiloDaltons
  total_weight_kda <- total_weight_da / 1000
  
  return(total_weight_kda)
}

# Test cases
cat("\nTASK 2: PROTEIN WEIGHT CALCULATOR\n")
cat("==================================\n\n")

# Test with default (KACHI)
cat("Default (KACHI):", calculate_protein_weight(), "KDa\n")

# Test with valid protein sequences
cat("ALANINE (single amino acid):", calculate_protein_weight("A"), "KDa\n")
cat("GATTACA:", calculate_protein_weight("GATTACA"), "KDa\n")
cat("MSKGEELFTG:", calculate_protein_weight("MSKGEELFTG"), "KDa\n")

# Test with invalid character
cat("\nTesting invalid sequence (KACHIB with B):\n")
result <- calculate_protein_weight("KACHIB")
cat("Result:", result, "KDa\n")

# Test with lowercase
cat("\nTesting lowercase (kachi):", calculate_protein_weight("kachi"), "KDa\n")
