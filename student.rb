require_relative 'person'

class Student < Person
  def initialize(classroom, age, name, parent_permission)
    super(age, name, parent_permission: parent_permission)

    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

# puts Student.new('A', 22, 'IBRAHIM', parent_permission:false).classroom
