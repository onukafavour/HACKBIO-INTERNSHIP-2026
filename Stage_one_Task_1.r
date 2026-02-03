# TASK 1: GC% CALCULATOR 

calculate_gc_percent <- function(sequence) {
  # Convert sequence to uppercase to handle both upper and lower case
  sequence_upper <- toupper(sequence)
  
  # Count G and C nucleotides
  g_count <- sum(strsplit(sequence_upper, "")[[1]] == "G")
  c_count <- sum(strsplit(sequence_upper, "")[[1]] == "C")
  
  # Calculate total length
  total_length <- nchar(sequence_upper)
  
  # Calculate GC percentage
  gc_percent <- ((g_count + c_count) / total_length) * 100
  
  return(gc_percent)
}

# Test cases
cat("TASK 1: GC% CALCULATOR\n")
cat("======================\n\n")
cat("Testing GCATTTAT:", calculate_gc_percent("GCATTTAT"), "%\n")
cat("Testing gcaTTTAT:", calculate_gc_percent("gcaTTTAT"), "%\n")
cat("Testing GCGCGCGC:", calculate_gc_percent("GCGCGCGC"), "%\n")
cat("Testing atatatat:", calculate_gc_percent("atatatat"), "%\n\n")
