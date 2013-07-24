class DNA
  def initialize(string)
    @user_dna = string
    @letter_counter = {
      a_count: 0,
      c_count: 0,
      g_count: 0,
      t_count: 0
    }
  end
  
  def valid_nucleotide?(string)
    %w(A T C G U).include?(string)
  end

  def nucleotide_counts
    if valid_nucleotide?(@user_dna)
      puts "That is not a valid string!"
    else
      @letter_counter[:a_count] = @user_dna.count("A")
      @letter_counter[:c_count] = @user_dna.count("C")
      @letter_counter[:g_count] = @user_dna.count("G")
      @letter_counter[:t_count] = @user_dna.count("T")
      puts @letter_counter
    end
  end

end

# hello = "Hellooo!"
# puts hello.count("o")
# puts hello.count("l")
# puts hello
dna = DNA.new("S")
dna.nucleotide_counts