require_relative 'person'

# Class Teacher inherits from Person
class Teacher < Person
  def initialize(specialization, age, name, parent_permission)
    super(age, name, parent_permission: parent_permission)

    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

puts Teacher.new('Maths', 30, 'ABC', parent_permission: false).specialization
