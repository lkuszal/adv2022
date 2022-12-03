require 'day_03/rucksack_manager'

describe RucksackManager do
  test_input = "./spec/test_inputs/test_input_03.txt"
  rucksack_manager = described_class.new(test_input)

  context "priority_of_duplicated_items" do
    it "get and add priorities of all duplicated items in all backpacks" do
      expect(rucksack_manager.priority_of_duplicated_items).to eq 157
    end
  end
end
