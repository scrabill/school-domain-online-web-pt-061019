require "pry"

# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  # def name=(name)
  #   @name = name
  # end
  #
  # def name
  #   @name
  # end
  #
  # def roster=(roster)
  #   @roster = roster
  # end
  #
  # def roster
  #   @roster
  # end

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
# <<<<<<< HEAD
    # roster.sort
    # binding.pry
    roster.each do |key,value| # For each key, take the value and sort the items in the array
      roster[key].sort! # And replace them in the roster (key order does not matter)
    end
# =======
#     roster.sort
#     binding.pry
#     # roster.keys.each do |key,values|
#     #   roster[9].sort
#     # end
#       # roster[9].sort
# >>>>>>> 13a2e7aa07e679143290145b332411e4e80acd9b
#   end
end
