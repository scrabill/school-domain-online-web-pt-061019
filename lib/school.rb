require "pry"

# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def roster=(roster)
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(name,grade)

    if roster.has_key?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end

    # hash["new_key"] = "New Value"
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    # roster.sort
    # binding.pry
    roster.each do |key,value| # For each key, take the value and sort the items in the array
      roster[key].sort! # And replace them in the roster (key order does not matter)
    end
  end
end
