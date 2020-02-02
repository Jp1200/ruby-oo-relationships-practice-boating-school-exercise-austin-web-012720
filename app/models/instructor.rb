class Instructor
attr_reader :instructor_name
@@all =[]
  def initialize(instructor_name)
    @instructor_name = instructor_name
    @@all << self

  end

def pass_student(student, test_name)
  BoatingTest.all.each do |i|
    if i.student == student && i.test_name == test_name
      i.test_status = 'passed'
    end
  end
  BoatingTest.new(student, test_name, 'passed', self)

end

def fail_student(student, test_name)
  BoatingTest.all.each do |i|
    if i.student == student && i.test_name == test_name
      i.test_status = 'failed'
    end
  end
  BoatingTest.new(student, test_name, 'failed', self)



end

  def self.all
    @@all
  end
end
