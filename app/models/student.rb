class Student

  @@all = []
  attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
      #add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
      BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|i| i.first_name == first_name}

  end

  def grade_percentage(first_name)

    tests = BoatingTest.all.select {|i| i.student.first_name == first_name}

    p_tests = tests.count{|tes| tes.test_status == 'passed'}
    #binding.pry
    return (p_tests)/(tests.count).to_f * 100.0
  end
end
