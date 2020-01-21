class Bear
  attr_reader :name, :type
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.count()
  end

  def take_fish_from_river(river)
    fish_taken = river.get_fish_array().last()
    @stomach.push(fish_taken)
    river.remove_fish()
  end

  def roar()
    return "Roarr!"
  end
end
