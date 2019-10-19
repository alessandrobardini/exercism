const RNA_MAP = {'C': 'G', 'G': 'C', 'T': 'A', 'A':'U'}

export const toRna = (dna_string) => [...dna_string].map((dna_character) => RNA_MAP[dna_character]).join('')
