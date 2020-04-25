class Bob
  def self.hey(remark)
    stripped_remark = remark.strip
    is_silence = stripped_remark.empty?
    is_question = stripped_remark.end_with?('?')
    is_shouting = stripped_remark.scan(/[A-Z]/).size > stripped_remark.scan(/[a-z]/).size
    return 'Fine. Be that way!' if is_silence
    return "Calm down, I know what I'm doing!" if is_shouting && is_question
    return 'Whoa, chill out!' if is_shouting
    return 'Sure.' if is_question
    'Whatever.'
  end
end

