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

# puts Teacher.new('english', 22, 'ibrahim', parent_permission: false).specialization
