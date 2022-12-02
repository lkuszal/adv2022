class RPS
  def initialize(input_file)
    @input = File.read(input_file).split("\n").map { |a| a.split(" ") }
  end

  def calculate_guide_results
    score = 0
    @input.each do |game|
      score += position_score(game)
      score += score_for_match(game)
    end
    score
  end

  private

  def position_score(position)
    {
      "X" => 1,
      "Y" => 2,
      "Z" => 3
    }[position[1]]
  end

  def score_for_match(game)
    {
      %w[A X] => 3,
      %w[A Y] => 6,
      %w[A Z] => 0,

      %w[B X] => 0,
      %w[B Y] => 3,
      %w[B Z] => 6,

      %w[C X] => 6,
      %w[C Y] => 0,
      %w[C Z] => 3
    }[game]
  end
end

rps = RPS.new('./lib/day_02/input')
p rps.calculate_guide_results
