#!/usr/bin/env ruby

# This class is based off of a simple oxy/prop "lampworking" torch.
class GlassBlowingTorch
  def initialize
    @oxygen_dial = false
    puts 'Your oxygen is disconnected.'
    @propane_dial = false
    puts 'Your propane is disconnected.'
    @flame_temp = 0
    puts 'Currently, there is no flame.'
  end

  def instructions
    puts 'Basic instructions:'
    puts '1) Connect the propane tank to the torch gas line.'
    puts '2) Turn the propane dial to 1.'
    puts '3) Ignite flame.'
    puts '4) Connect oxygen tank.'
    puts '5) Experiment with turning the oxy/prop dials'
    puts '6) Do not go over 2 turns on either dial.'
    puts '7) you can only turn the flame up in temp,'
    puts 'you must switch off and restart.'
  end

  def connect_propane
    @propane_dial = true
    puts 'You just connected the propane tank.'
  end

  def connect_oxygen
    @oxygen_dial = true
    puts 'You just connected the oxygen tank.'
  end

  def propane_dial(level)
    if level.zero?
      puts 'Propane gas is not flowing.'
    elsif level == 1
      puts 'Your torch is ready to Ignite, propane is flowing.'
    elsif level == 2
      @flame_temp += 750
      puts "You turn the prop dial, flame grows to #{@flame_temp}\xC2\xB0F."
    else
      puts 'DANGER! Sprinklers have engaged!! Evacuate the building!'
    end
  end

  def strike
    if @propane_dial && @oxygen_dial
      puts 'Do you have a death wish?'
    elsif @propane_dial
      puts 'Your flame is ignited!'
    end
  end

  def oxygen_dial(level)
    if level == 1
      @flame_temp += 1000
      puts "You turn the oxy dial, flame grows to #{@flame_temp}\xC2\xB0F."
    elsif level == 2
      @flame_temp += 400
      puts "You turn the oxy dial, flame grows to #{@flame_temp}\xC2\xB0F."
    else
      puts 'DANGER! Sprinklers have engaged, evacuate the building!'
    end
  end

  def off
    @oxygen_dial = false
    puts 'Your oxygen is disconnected.'
    @propane_dial = false
    puts 'Your propane is disconnected.'
    @flame_temp = 0
    puts 'The flame dies out...'
    puts 'What a waste of gas, no glass art was made.'
  end
end

torch = GlassBlowingTorch.new
torch.instructions
torch.connect_propane
torch.propane_dial(0)
torch.propane_dial(1)
torch.strike
torch.connect_oxygen
torch.oxygen_dial(2)
torch.oxygen_dial(1)
torch.oxygen_dial(2)
torch.propane_dial(2)
torch.oxygen_dial(2)
torch.propane_dial(5)
torch.off
