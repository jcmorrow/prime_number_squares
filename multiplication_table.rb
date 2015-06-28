class MultiplicationTable
	attr_reader :value_rows
	def initialize values
		@values = values.sort!
		@value_rows = Array.new
		@value_rows[0] = ([' ', @values]).flatten!
		@values.each do |row_value|
			row = Array.new
			row << row_value
			@values.each do |column_value|
				row << (row_value * column_value)
			end
			puts "row: #{row}"
			@value_rows << row
		end
	end
	def present
		presentation = ""
		@value_rows.each do |row|
			presentation << '|'
			row.each do |value|
				presentation << "#{value} |"
			end
			presentation << "\n"
		end
		return presentation
	end
	def print
		puts present
	end
	def largest
		@value_rows.flatten.select { |value| value != ' ' } .sort.last
	end
end