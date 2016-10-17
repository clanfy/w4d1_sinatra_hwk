require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @address = Address.new("3 ARGYLE HOUSE", "CODEBASE", "e13 zqf", "0131558030")
  end

  def test_upcase_postcode
    assert_equal("E13 ZQF", @address.upcase_postcode)
  end

end