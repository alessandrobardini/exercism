class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @series.size
    @series.chars.each_cons(slice_size).map(&:join)
  end
end
