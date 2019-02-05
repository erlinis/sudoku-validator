# SudokuSection represent each serie of 9 numbers, it could be
# a row, a column or a subgroup
class SudokuSection
  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def valid?
    (0..8).each do |index|
      item = numbers[index]
      next if item == '0'
      return false if item_invalid?(item)
    end
    true
  end

  def to_s
    numbers.to_s
  end

  private

  def item_invalid?(item)
    item_count = numbers.count(item)
    item_count != 1
  end
end
