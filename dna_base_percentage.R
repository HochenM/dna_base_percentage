#dna_base_percentage
nuclotide = c("A", "T", "C", "G")
p = c(1/4, 1/4, 1/4, 1/4)
DNA = sample(nuclotide, 1000, replace = TRUE, prob = p)

dna_percentage = function(seq, base){
  if(class(seq) != "character") stop("Input must be character")
  return(length(which(seq == base)) / length(seq))
}

dna_percentage(DNA, "A")
dna_percentage(DNA, "T")
dna_percentage(DNA, "C")
dna_percentage(DNA, "G")
