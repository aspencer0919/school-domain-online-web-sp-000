class School

  def initialize(school_name)
    @name = name
    @roster = {}
  end
  
  attr_reader :name, :roster
  
  def grade(grade)
    @roster[grade]
  end
  
 def sort()
    return_hash = {}
    @roster.each do |key,value|
      return_hash[key] = value.sort
    end
    return_hash
end
  
  def add_student(name,grade)
    if @roster.include?(grade)
      @roster[grade]<<name
    else
      @roster[grade] = []
      @roster[grade]<<name
    end
  end
end