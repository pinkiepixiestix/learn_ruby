class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

def time_string

    min = @seconds / 60
    min = min < 60 ? min : min % 60
    hour = @seconds / 3600
    self.seconds %= 60
    "%02d:%02d:%02d" % [hour,min,seconds]
  end

  def timer
    @timer
  end
end

#puts Timer.new.seconds=6
#puts Timer.new.time_string

=begin
class Timer
  def seconds
    @timer = 0
  end

  def seconds=(secs)
    @timer = secs
  end

  def time_string

  end

  def padded
    @timer/10 < 1 ? '0' + @timer.to_s : @timer.to_s
  end
end
=end
