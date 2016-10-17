require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @word = Word.new("v3n 1r6")
  end

  def test_upcase
    assert_equal("V3N 1R6", @word.upcase)
  end

end