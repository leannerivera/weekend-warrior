require 'awesome_print'
# Write a program that manages robot factory settings.
# When robots come off the factory floor, they have no name.
# The first time you boot them up, a random name is generated, such as
# _RX837_ or _BC811_. The names are comprised of two uppercase letters and a three digit number.
# Every once in a while we need to reset a robot to its factory settings,
# which means that their name gets wiped. The next time you ask, it will
# respond with a new name.

class Robot

  attr_reader :name

  def initialize
   @name = self.new_name
  end

  def reset
    @name = self.new_name
  end

  def new_name #mthod for new names
    alpha = ("A".."Z").to_a.sample(2).join #range from capitals a to z, randomized to two alphas, then joined to one string
    nums = ("0".."9").to_a.sample(3).join #similar to above, but three numbers (as strings)
    return alpha + nums #concat both strings for name
  end

end
