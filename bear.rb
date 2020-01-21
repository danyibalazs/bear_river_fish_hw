class Bear
  attr_reader :name, :type
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def check_stomach()
    return @stomach.count()
  end


end
