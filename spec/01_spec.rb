require 'day_01/calories_counter'

describe CaloriesCounter do
  context "find_biggest_value" do
    it "calculates elf with the most calories" do
      test_input = "./spec/test_inputs/test_input_01.txt"
      calories_counter = described_class.new(test_input)
      expect((calories_counter).find_biggest_value).to eq 24000
    end
  end
end
