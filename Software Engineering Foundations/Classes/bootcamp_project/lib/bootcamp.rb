class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |hash,key| hash[key] = []}
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students 
    @students
  end

  def hire(new_hire)
    @teachers << new_hire
  end

  def enroll(student)
    if @students.length < @student_capacity
      @students << student
      return true
    end

    false
  end

  def enrolled?(student)
    @students.include?(student)
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(student, grade)
    if self.enrolled?(student)
      @grades[student] << grade
      return true
    end
    false
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    if self.enrolled?(student) && self.num_grades(student) > 0
      grades = @grades[student]
      sum = 0
      grades.each { |grade| sum += grade}
      return sum / grades.length
    end

    nil
    # if self.enrolled?(student) && @grades[student].length > 0
    #   @grades[student].sum / @grades[student].length
    # end
  end
end
