# This is a simulated glass blowing torch.
class GlassTorch
  attr_reader :flame_temperature

  def initialize
    @flame_temperature = 800
  end

  def increase_temperature(level_up)
    @flame_temperature += level_up
    if @flame_temperature > 2000
      @flame_temperature = 2000
      puts "You cannot raise the temp above 2000\xC2\xB0F, \
temp is now #{@flame_temperature}\xC2\xB0F."
    else
      puts "the temp of the flame is now #{@flame_temperature}\xC2\xB0F."
    end
  end

  def decrease_temperature(level_down)
    @flame_temperature -= level_down
    if @flame_temperature < 800
      @flame_temperature = 800
      puts "You cannot lower the temp below 800\xC2\xB0F, \
temp is now #{@flame_temperature}\xC2\xB0F."
    else
      puts "the temp of the flame is now #{@flame_temperature}\xC2\xB0F."
    end
  end
end
