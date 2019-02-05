require_relative 'lib/validator'

sudoku_string = File.read("./spec/fixtures/#{ARGV[0]}")
puts Validator.validate(sudoku_string)
