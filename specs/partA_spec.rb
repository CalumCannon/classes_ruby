require('minitest/autorun')
require('minitest/rg')
require_relative('../partA_student_class.rb')

class StudentClassTest < MiniTest::Test

  def test_get_student_name
    test_student = Student.new("Calum", "G12")
    assert_equal("Calum", test_student.name)
  end

  def test_set_student_name
    test_student = Student.new("Calum", "G12")
    test_student.name = "Paul"
    assert_equal("Paul", test_student.name)
  end

  def test_get_student_cohort
    test_student = Student.new("Calum", "G12")
    assert_equal("G12", test_student.cohort)
  end

  def test_student_talk
    test_student = Student.new("Calum", "G12")
    assert_equal("I can talk!", test_student.talk)
  end

  def test_say_favourite_programming_language
    test_student = Student.new("Calum", "G12")
    assert_equal("I love Ruby!", test_student.say_favourite_programming_language("Ruby"))
  end

end
