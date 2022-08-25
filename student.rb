require('./person')

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name, parent_permission)
    super(age, name, parent_permission: parent_permission)

    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

def add_classroom(classroom)
  @classroom = classroom
  classroom.students.push(self) unless classroom.students.include?(self)
end
