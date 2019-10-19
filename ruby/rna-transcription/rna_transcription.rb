class Complement
  def self.of_dna(dna_strand)
    dna_mapping = { 'G' => 'C', 'C' => 'G', 'A' => 'U', 'T' => 'A' }
    dna_strand.chars.map {|dna_value| dna_mapping[dna_value]}.join
  end
end
