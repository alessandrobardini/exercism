class BeerSong
  def self.recite(starting_verse, number_of_verses)
    (0...number_of_verses).map { |index| verse(starting_verse - index) }.join("\n")
  end

  def self.verse(number_of_bottles)
    "#{first_part_of_the_verse(number_of_bottles)}\n#{second_part_of_the_verse(number_of_bottles - 1)}\n"
  end

  private_class_method def self.first_part_of_the_verse(number_of_bottles)
    return 'No more bottles of beer on the wall, no more bottles of beer.' if number_of_bottles == 0
    bottles = number_of_bottles == 1 ? 'bottle' : 'bottles'
    "#{number_of_bottles} #{bottles} of beer on the wall, #{number_of_bottles} #{bottles} of beer."
  end

  private_class_method def self.second_part_of_the_verse(number_of_bottles)
    return 'Go to the store and buy some more, 99 bottles of beer on the wall.' if number_of_bottles == -1
    return 'Take it down and pass it around, no more bottles of beer on the wall.' if number_of_bottles == 0
    bottles = number_of_bottles == 1 ? 'bottle' : 'bottles'
    "Take one down and pass it around, #{number_of_bottles} #{bottles} of beer on the wall."
  end
end
