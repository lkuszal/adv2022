require 'day_02/rock_paper_scissors'

describe RPS do
  test_input = "./spec/test_inputs/test_input_02.txt"
  rps = described_class.new(test_input)

  context "calculate_guide_results" do
    it "counts how many scores you get for following guide's strategy" do
      expect(rps.calculate_guide_results).to eq 15
    end
  end
end
