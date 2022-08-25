require_relative 'decorators'

class Person < nameable
  attr_accessor :name, :age, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
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

  def correct_name
    @name
  end

  def add_rentals(rental)
    @rentals.push(rental)
    rental.person = self
  end

  private :of_age?
end

puts Person.new(22, 'ibrahim', parent_permission: false).parent_permission
