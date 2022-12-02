require 'day_01/calories_counter'

describe CaloriesCounter do
  test_input = "./spec/test_inputs/test_input_01.txt"
  calories_counter = described_class.new(test_input)

  context "find_biggest_value" do
    it "calculates sum of calories carried by elf with the most calories" do
      expect((calories_counter).find_biggest_value).to eq 24000
    end
  end

  context "sum_of_three_biggest_values" do
    it "calculates the sum of calories carried by the three elf with the most calories" do
      test_input = "./spec/test_inputs/test_input_01.txt"
      calories_counter = described_class.new(test_input)
      expect((calories_counter).sum_of_three_biggest_values).to eq 45000
    end
  end
end
