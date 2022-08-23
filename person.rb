class Person
  attr_accessor :name, :age, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    of_age >= 18
  end

  def can_use_services?
    of_age || parent_permission
  end
  private :of_age?
end

puts Person.new(22, 'ibrahim', parent_permission: false).parent_permission
