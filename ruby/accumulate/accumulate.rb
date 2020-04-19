class Array
  def accumulate
    return to_enum :accumulate unless block_given?

    result = []
    each { |e| result << yield(e) }
    result
  end
end
