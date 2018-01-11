require_relative 'number_to_word'
require 'test/unit'
 
class NumberToWordTest < Test::Unit::TestCase
 
  def test_simple
    assert_equal('seven', NumberToWord.convert(7))
    assert_equal('forty-two', NumberToWord.convert(42))
    assert_equal('two thousand and one', NumberToWord.convert(2001))
    assert_equal('nineteen hundred and ninety-nine', NumberToWord.convert(1999))
    assert_equal('seventeen thousand nine hundred and ninety-nine', NumberToWord.convert(17999))
    assert_equal('two hundred and fifty-two thousand three hundred and forty-five', NumberToWord.convert(252345))
    assert_equal('one million and two', NumberToWord.convert(1000002))
    assert_equal('three billion three hundred and forty-five million six hundred and seventy-eight thousand nine hundred and twelve', NumberToWord.convert(3345678912))
  end
end