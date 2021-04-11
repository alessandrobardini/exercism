=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave
  def initialize(time)
    @time = time
  end

  def timer
    minutes, seconds = @time.divmod(100)
    minutes += seconds / 60
    seconds %= 60
    "%02d:%02d" % [minutes, seconds]
  end
end