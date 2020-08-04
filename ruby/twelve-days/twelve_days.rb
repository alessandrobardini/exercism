class TwelveDays
  DAYS_DATA = [
    { ordinal: 'first', present: 'a Partridge in a Pear Tree' },
    { ordinal: 'second', present: 'two Turtle Doves' },
    { ordinal: 'third', present: 'three French Hens' },
    { ordinal: 'fourth', present: 'four Calling Birds' },
    { ordinal: 'fifth', present: 'five Gold Rings' },
    { ordinal: 'sixth', present: 'six Geese-a-Laying' },
    { ordinal: 'seventh', present: 'seven Swans-a-Swimming' },
    { ordinal: 'eighth', present: 'eight Maids-a-Milking' },
    { ordinal: 'ninth', present: 'nine Ladies Dancing' },
    { ordinal: 'tenth', present: 'ten Lords-a-Leaping' },
    { ordinal: 'eleventh', present: 'eleven Pipers Piping' },
    { ordinal: 'twelfth', present: 'twelve Drummers Drumming' }
  ]

  def self.song
    song_lines = 12.times.each_with_object([]) do |index, song|
      song << "On the #{DAYS_DATA[index][:ordinal]} day of Christmas my true love gave to me: #{DAYS_DATA[index][:present]}#{end_of_verse(song, index)}.\n"
    end
    song_lines.join("\n")
  end

  private_class_method def self.end_of_verse(song, index)
    return '' if index.zero?
    return ", and#{presents_in_verse(song[0])}" if index == 1
    ",#{presents_in_verse(song[index - 1])}"
  end

  private_class_method def self.presents_in_verse(row)
    row.split(':')[1].split('.')[0]
  end
end
