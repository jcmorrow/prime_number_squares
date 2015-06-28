class MultiplicationTable
	attr_reader :value_rows
	def initialize values
		@values = values.sort!
		@column_width = (@values.last * @values.last).to_s.length
		@value_rows = Array.new
		@value_rows[0] = ([' ', @values]).flatten!
		@values.each do |row_value|
			row = Array.new
			row << row_value
			@values.each do |column_value|
				row << (row_value * column_value)
			end
			@value_rows << row
		end
	end
	def present
		presentation = ""
		presentation << "#{'-' * ((@column_width + 2) * (@values.length + 1) + 1)}\n"
		@value_rows.each do |row|
			presentation << '|'
			row.each do |value|
				presentation << "#{pad value} |"
			end
			presentation << "\n#{'-' * ((@column_width + 2) * (@values.length + 1) + 1)}"
			presentation << "\n"
		end
		return presentation
	end
	def pad value
		while value.to_s.length < @column_width
			value = value.to_s + ' '
		end
		return value
	end
	def print
		puts present
	end
	def largest
		@value_rows.flatten.select { |value| value != ' ' } .sort.last
	end
end