# code here!
class School
    attr_accessor :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if  @roster[grade]
            @roster[grade]  << name
        else 
            @roster[grade] = [name]
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        #@roster.sort
        @roster.each do |key, value|
            value.sort!
        end
        @roster
    end
end