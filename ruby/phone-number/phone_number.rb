class PhoneNumber
  def self.clean(phone_number)
    cleaned_number = phone_number.scan(/\d+/)
    
    return nil if cleaned_number.size < 10 ||cleaned_number.size > 11
    if cleaned_number.size == 11
      if cleaned_number[0] != '1'
        return nil
      end
      return cleaned_number[1..-1]
    end
    cleaned_number
  end
end
