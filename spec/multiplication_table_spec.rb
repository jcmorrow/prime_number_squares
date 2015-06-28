require_relative '../multiplication_table'


RSpec.describe 'MultiplicationTable' do
	describe 'print' do
		it 'prints out a grid of numbers' do
			expected_output = <<-eos
1 | 2 | 3 | 4 | 5 |
-
2
-
3
-
4
-
5
			eos
			table = MultiplicationTable.new([1,2,3,4,5])
			expect(table.present).to eq(expected_output)
		end
	end
	describe 'largest' do
		it 'returns the largest number' do
			table = MultiplicationTable.new([1,2,3,4,5])
			expect(table.largest).to eq(25)
		end
	end
end
