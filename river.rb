class River
  attr_reader :name
  def initialize(name, fish_array)
    @name = name
    @fish_array = fish_array
  end

  def get_fish_array
    return @fish_array
  end

  def remove_fish()
    @fish_array.pop()
  end

  def fish_count
    return @fish_array.count()
  end
end
