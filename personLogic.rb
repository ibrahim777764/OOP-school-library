require './Data'
require './person'

class PersonLogic
    
    include Data

    attr_accessor :persons

    def initialize
        @persons = Data.persons
    end

    def list_all_persons
        puts 'Database is empty! Add a person.' if @persons.empty?
        @persons.each { |person| puts "[#{person.class.name}] Name: #{person.name}, Age: #{person.age}, id: #{person.id}" }
    end

    def create_person
        print 'To create a student, press 1, to create a teacher, press 2 : '
        option = gets.chomp
    
        case option
        when '1'
          create_student
        when '2'
          create_teacher
        else
          puts 'Invalid input. Try again'
        end
    end

    def create_student
        puts 'Create a new student'
        print 'Enter student age: '
        age = gets.chomp.to_i
        print 'Enter name: '
        name = gets.chomp
        print 'Has parent permission? [Y/N]: '
        parent_permission = gets.chomp.downcase
        case parent_permission
        when 'n'
          student = Student.new('undefined', age, name, parent_permission: false)
          @persons << student
          puts 'Student doesnt have parent permission, cant rent books'
        when 'y'
          student = Student.new('undefined', age, name, parent_permission: true)
          @persons << student
          puts 'Student created successfully'
        end
    end

    def create_teacher
        puts 'Create a new teacher'
        print 'Enter teacher age: '
        age = gets.chomp.to_i
        print 'Enter teacher name: '
        name = gets.chomp
        print 'Enter teacher specialization: '
        specialization = gets.chomp
        teacher = Teacher.new(specialization, age, name)
        @persons.push(teacher)
        puts 'Teacher created successfully'
    end

end
